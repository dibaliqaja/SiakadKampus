/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kampusjava;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Iqbal Muhammad
 */
public class koneksi {
    Connection cn = null;
    Statement st;
    public static Connection koneksiDB(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/kampus", "root", "");
            return cn;
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
    } 
}
