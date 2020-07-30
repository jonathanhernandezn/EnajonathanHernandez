/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ena.hernandez.proyecto;

import ena.hernandez.proyecto.objetos.Requerimiento;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;




public class Consultas extends Autentificacion{
    
    public boolean autenticacion(String usuario,String contraseña){
        PreparedStatement pst=null;
        ResultSet rs=null;
        
        try {
            String consulta="select * from autentificacion where cuenta = ? and contraseña = ? ";
            pst = getconexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, contraseña);
            rs=pst.executeQuery();    
            
            if(rs.absolute(1)){
                return true;
            }
              
        } catch (Exception e) {
            System.err.println("error"+e);
        }finally{
            try {
                if(getconexion() != null) getconexion().close();
                if(pst != null )pst.close();
                if(rs != null)rs.close();
            } catch (Exception e) {
                System.err.println("error"+e);
            }
        }    
         
        return false;
    }
    
    public boolean guardar(String gerencia, String depto, String asignar, String encar, String reque)
    {
        PreparedStatement pst=null;
        
        
        try{
            String consulta = "insert into requerimientos(gerencia,depto,asignar,encargado,requerimiento,cerrado) values (?,?,?,?,?,?) ";
            pst = getconexion().prepareStatement(consulta);
            pst.setString(1,gerencia);
            pst.setString(2,depto);
            pst.setString(3,asignar);
            pst.setString(4,encar);
            pst.setString(5,reque);
            pst.setInt(6,0);
            
            if(pst.executeUpdate()==1){
                return true;
            }
            
        }catch(Exception ex){
            System.err.println("error"+ex);
        }finally{
            try{
                if(getconexion()!=null) getconexion().close();
                if(pst !=null) pst.close();
            }catch (Exception e){
                System.err.println("error"+e);
            }
        } 
        return false;
    }
    
   public List<Requerimiento> mostrar(String gerencia, String depto, String asignar)
    {
        PreparedStatement pst=null;
        List<Requerimiento> listaRequerimiento = new ArrayList<>();
        
        try{
            
            String consulta = "select * from requerimientos where gerencia = ? and depto = ? and asignar = ?";
            pst = getconexion().prepareStatement(consulta);
            pst.setString(1,gerencia);
            pst.setString(2,depto);
            pst.setString(3,asignar);
            
            ResultSet rs = null;
            rs = pst.executeQuery();
 
            while(rs.next()) {
                
                 Requerimiento req = new Requerimiento(
                         rs.getInt(1),
                         rs.getString(2), 
                         rs.getString(3), 
                         rs.getString(4), 
                         rs.getString(6),
                         rs.getInt(7));

                 listaRequerimiento.add(req);
             }
            
        }catch(Exception e){
            System.err.println("error"+e);
        }finally{
            try{
                if(getconexion()!=null) getconexion().close();
                if(pst !=null) pst.close();
            }catch (Exception e){
                System.err.println("error"+e);
            }
        }
        
        return listaRequerimiento;
    }
   
       public boolean cerrar(int id)
    {
        PreparedStatement pst=null;

        try{

            String consulta = "UPDATE requerimientos set Cerrado=1 where id = ?";
            pst = getconexion().prepareStatement(consulta);
            pst.setInt(1,id);
            
            if(pst.executeUpdate()==1){
                return true;
            }
            
        }catch(Exception ex){
            System.err.println("error "+ex);
        }finally{
            try{
                if(getconexion()!=null) getconexion().close();
                if(pst !=null) pst.close();
            }catch (Exception e){
                System.err.println("error"+e);
            }
        } 
        return false;
    }
    
   
//   public static void main(String[] args) {
//        consultas test = new consultas();
//        test.cerrar(6);
//    }
}