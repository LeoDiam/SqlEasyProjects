import java.io.*;
import java.text.*;
import java.util.*;
import java.sql.*;

public class JavaQuestion1 {
    public static Connection connection;
    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);
        String url = "jdbc:postgresql:database:1433;"
                + "databaseName=GerDatabase; user=Gerasimos; password=1234567;";
        Connection connect;

        try {
            Class.forName("org.postgresql.Driver");
        } catch (java.lang.ClassNotFoundException e) {
            System.out.print("ClassNotFoundException: ");
            System.out.println(e.getMessage());
        }

        try {
            connect = DriverManager.getConnection(url);
            System.out.println("Προσθέστε το id του πελάτη που θέλετε να διαγράψετε.");
            int pelatisId = sc.nextInt();
            try {
                String sqlQuery = "DELETE FROM public.\"Πελάτης\" where \"Κωδικός_Πελάτη\" = " + pelatisId;
                Statement stmt = connection.createStatement();
                int res = stmt.executeUpdate(sqlQuery);
                stmt.close();
                if(res>0)
                    System.out.println("Ο πελάτης διαγράφηκε επιτυχώς.");
                else
                    System.out.println("Ο πελάτης δεν διαγράφηκε επιτυχώς.");

            } catch (SQLException e) {
                System.out.println("Υπήρξε πρόβλημα στην σύνδεση με την βάση");
            }


            connect.close();
        } catch (SQLException e) {
            System.out.print("SQLException: ");
            System.out.println(e.getMessage());
        }
    }
}
