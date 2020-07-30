/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ena.hernandez.proyecto.objetos;


public class Requerimiento {
    
    int id;
    String gerencia;
    String depto;
    String asignar;
    String requerimiento;
    int cerrado;

    public Requerimiento() {
    }

    public Requerimiento(int id, String gerencia, String depto, String asignar, String requerimiento, int cerrado) {
        this.id = id;
        this.gerencia = gerencia;
        this.depto = depto;
        this.asignar = asignar;
        this.requerimiento = requerimiento;
        this.cerrado = cerrado;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGerencia() {
        return gerencia;
    }

    public String getDepto() {
        return depto;
    }

    public String getAsignar() {
        return asignar;
    }


    public String getRequerimiento() {
        return requerimiento;
    }

    public void setGerencia(String gerencia) {
        this.gerencia = gerencia;
    }

    public void setDepto(String depto) {
        this.depto = depto;
    }

    public void setAsignar(String asignar) {
        this.asignar = asignar;
    }


    public void setRequerimiento(String requerimiento) {
        this.requerimiento = requerimiento;
    }

    public int getCerrado() {
        return cerrado;
    }

    public void setCerrado(int cerrado) {
        this.cerrado = cerrado;
    }
    
    
    
    
}