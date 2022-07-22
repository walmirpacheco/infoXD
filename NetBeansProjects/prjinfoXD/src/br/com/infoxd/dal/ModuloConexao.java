/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.infoxd.dal;

import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Dell Inspiron
 */
public class ModuloConexao {

    // método que estabelece conexao com o banco de dados
    public static Connection conector() {
        java.sql.Connection conexao = null;
        // a linha abaixo "chama" o driver
        String driver = "com.mysql.jdbc.Driver";
        // armazenamento informações referente ao banco de dados
        String url = "jdbc:mysql://localhost:3306/dbinfoxd";
        String user = "root";
        String password = "Atecubanos";

        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (Exception e) {            
            return null;
        }
    }
}
