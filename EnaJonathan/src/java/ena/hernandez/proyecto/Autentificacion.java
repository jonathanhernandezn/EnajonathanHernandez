/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ena.hernandez.proyecto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Autentificacion {
    private String USERNAME="root";
    private String PASSWORD="root";
    private String HOST ="localhost";
    private String PORT ="3306";
    private String DATABASE="enajonahernandez";
    private String CLASSNAME="com.mysql.jdbc.Driver";
    private String URL="jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE;
    private Connection con;
    
    public Autentificacion(){
        try {
            
            Class.forName(CLASSNAME);
            con=DriverManager.getConnection(URL,USERNAME,PASSWORD);
        } catch (ClassNotFoundException e) {
            System.err.println("error"+e);
        }catch(SQLException e){
            System.err.println("error"+e);
        }
    }
            
            public Connection getconexion(){
                return con;
            }
            
            public static void main(String[] args){
                Autentificacion con=new Autentificacion();
                
            }
           
}
