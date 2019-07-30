/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kampusjava;

/**
 *
 * @author Iqbal Muhammad
 */
public class userID {
    private static String uname;
    public static void setUserLogin(String uname){
        userID.uname = uname;
    }
    public static String getUserLogin(){
        return uname;
    }
}
