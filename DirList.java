import java.io.*;
  import java.sql.*;
  public class DirList
  {
  public static void getList(String directory)
  throws SQLException
  {
  File path = new File( directory );
  String[] list = path.list();
  String element;
  for(int i = 0; i < list.length; i++)
  {
  element = list[i];
  #sql { INSERT INTO XX_AP_SCAN_DIR_LIST (FILENAME)
  VALUES (:element) };
  }
  }
  }
