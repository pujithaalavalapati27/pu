using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dapper;
using System.Data;

namespace product
{
    public class Registration
    {
        public void InsertUser(string name, string password, string email)
        {

            string connectionString = "Server=localhost;Database=demo;Uid=root;Pwd=7161;";

            using (MySqlConnection myConnection = new MySqlConnection(connectionString))
            {

                myConnection.Open();

                string insertQry = $"INSERT INTO users(name, password, email) VALUES ('{name}', '{password}', '{email}');";

                myConnection.Execute(insertQry);

                myConnection.Close();
            }
        }

        public IEnumerable<User> GetUsers()
        {

            var users = new List<User>();

            string ConnectionString = "Server=localhost;Database=demo;Uid=root;Password=7161;";

            using (MySqlConnection myConnection = new MySqlConnection(ConnectionString))
            {
                myConnection.Open();

                string getQry = $"select * from demo.users;";

                users = myConnection.Query<User>(sql: getQry).ToList();



                myConnection.Close();

            }
            return users;

        }


        public User GetUser(int userId)
        {


            var users = new User();

            string connectionString = "Server=localhost;Database=demo;Uid=root;Pwd=7161;";

            using (MySqlConnection mySqlConnection = new MySqlConnection(connectionString))
            {
                mySqlConnection.Open();

                string getUserbyUserId = $"select * from users where user_id = {userId}";

                users = mySqlConnection.QuerySingle<User>(getUserbyUserId);

                mySqlConnection.Close();
            }

            return users;
        }

        public void UpdateUser(string name, string email, string password, int user_id)
        {
            string connectionString = "Server=localhost;Database=demo;Uid=root;Pwd=7161;";
            using (MySqlConnection myCon = new MySqlConnection(connectionString))
            {
                myCon.Open();

                string updateQry = $"UPDATE users SET name = '{name}', password = '{password}', email = '{email}' WHERE user_id = {user_id}";

                myCon.Execute(updateQry);

                myCon.Close();
            }
        }

        public void DeleteUser(int user_id)
        {
            string connectionString = "Server=localhost;Database=demo;Uid=root;Pwd=7161;";
            using (MySqlConnection myCon = new MySqlConnection(connectionString))
            {
                myCon.Open();

                string deleteQry = $"Delete from users where user_id = {user_id}";

                myCon.Execute(deleteQry);

                myCon.Close();
            }
        }


    }
}
