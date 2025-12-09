package com.paradigmas.diagnostico_medico;

import org.jpl7.Query;

public class Diagnostico_Medico {

    public static void main(String[] args) {
        System.out.println("Probando conexion con Prolog...");
        
        // Cargar el archivo Prolog
        String rutaArchivo = "consult('base_conocimiento.pl')";
        Query consultaCargar = new Query(rutaArchivo);
        
        if (consultaCargar.hasSolution()) {
            System.out.println("Archivo Prolog cargado correctamente!");
        } else {
            System.out.println("Error al cargar archivo Prolog");
        }
        
        // Hacer una consulta simple
        Query consultaSaludo = new Query("saludo(X)");
        
        while (consultaSaludo.hasMoreSolutions()) {
            System.out.println("Resultado: " + consultaSaludo.nextSolution().get("X"));
        }
        
        System.out.println("Prueba completada!");
    }
}