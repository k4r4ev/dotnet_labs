using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace LAB_11_pro
{
    public class connection
    {
        public static MySqlConnection cn = new MySqlConnection("server=localhost;User Id=root;" + "database=responsibilities;Character Set=utf8");
        public static MySqlCommand cmd = new MySqlCommand();
        public static MySqlDataReader dr;
    }
}
