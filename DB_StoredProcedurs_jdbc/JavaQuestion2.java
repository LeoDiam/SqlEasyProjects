import java.io.*;
import java.text.*;
import java.util.*;
import java.sql.*;
import java.util.Date;

public class JavaQuestion2 {
    public static Connection connection;
    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);
        String url = "jdbc:postgresql:database:1433;"
                + "databaseName=GerDatabase; user=Gerasimos; password=1234567;";
        Connection connect;
        int PId;
        double cost;
        String Date;
        try {
            Class.forName("org.postgresql.Driver");
        } catch (java.lang.ClassNotFoundException e) {
            System.out.print("ClassNotFoundException: ");
            System.out.println(e.getMessage());
        }

        try {
            connect = DriverManager.getConnection(url);
            int paraggeliaId;
            System.out.println("Input order id to see the details.");
            paraggeliaId = sc.nextInt();

            String sqlQuery = "SELECT \"Παραγγελία\".\"Κωδικός_Παραγγελίας\", \"Παραγγελία\".\"Ημερομηνία_Παραγγελίας\",SUMSUM(\"Ποσό Πληρωμής\") as 'Κόστος',FROM \"Παραγγελία\" JOIN\n" +
                    "     \"Προϊόν\"\n" +
                    "     ON \"Παραγγελία\".\"Κωδικός_Παραγγελίας\" = \"Προϊόν\".\"Κωδικός\"	WHERE \"Παραγγελία\".\"Κωδικός_Παραγγελίας\"="
                    + paraggeliaId;
            Statement stmt = connect.createStatement();
            ResultSet res = stmt.executeQuery(sqlQuery);

            if (res.next()) {
                PId = res.getInt("\"Παραγγελία\".\"Κωδικός_Παραγγελίας\"");
                cost = res.getDouble("Κόστος");
                Date = res.getString("\"Παραγγελία\".\"Ημερομηνία_Παραγγελίας\"");
                stmt.close();
                System.out.println(PId);
                System.out.println(cost);
                System.out.println(Date);
            }
            connect.close();
        } catch (SQLException e) {
            System.out.print("SQLException: ");
            System.out.println(e.getMessage());
        }
    }
}

