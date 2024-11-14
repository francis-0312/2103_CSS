/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Control_Connector;
import java.sql.*;
import javax.swing.JOptionPane;

public class DatabaseConnection {
    private static Connection connect;
    private static  DatabaseConnection sgkon;

            
    private static String url = "jdbc:mysql://localhost:3306/css";
    private static String user = "root";
    private static String password = "";
    public DatabaseConnection(){
        connect = null;
        //for connection ...... JOptionPane.showMessageDialog(null, "Database Connector. Successfully", "", 0);
        
        /*try {
            connect = DriverManager.getConnection(url, user, password);
            JOptionPane.showConfirmDialog(null, "connected successfully", "", 0);
        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, "connected error", "", 0);
        }*/
                
    }
   
}
