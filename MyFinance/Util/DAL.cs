using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;



namespace MyFinance.Util
{
    public class DAL
    {
        // conexão web
        private static string server = "conecty.com";
        private static string database = "financeiro";
        private static string user = "myfinance";
        private static string password = "4Bk#d71v";
        private string connectionString = $"Server={server};Database={database};Uid={user};Pwd={password}";
        private MySqlConnection connection;






        // conexão local
       
       // private static string server = "localhost";
      //  private static string database = "financeiro";
      //  private static string user = "root";
      //  private static string password = "";
       // private string connectionString = $"Server={server};Database={database};Uid={user};Pwd={password}";
      //  private MySqlConnection connection;


        public DAL()
        {
            connection = new MySqlConnection(connectionString);
            connection.Open();
        }

        //Execute SELECTs

        public DataTable RetDataTable(string sql)
        {
            DataTable dataTable = new DataTable();
            MySqlCommand command = new MySqlCommand(sql, connection);
            MySqlDataAdapter da = new MySqlDataAdapter(command); 
            da.Fill(dataTable);
            return dataTable;
        }

        //Executa INSERTs, UPDATEs, DELETEs
        public void ExecutarComandoSQL(string sql)
        {
            MySqlCommand command = new MySqlCommand(sql, connection);
            command.ExecuteNonQuery();
        }
        

               



    }
}
