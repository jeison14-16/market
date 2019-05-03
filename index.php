<html><!--mi comentario -->
    <head>
          <title>MARKETL</title>
          <link rel="icon" type="image/ico" href="icons/logo.png">
    </head>
    <body bgcolor="#FAF9F9">

     <br><br>
<form name="form1" action="insert_prod.php" method="POST">



    <center>


      <table border="0" align="center" color="red">
          <center><p>MARKET</center>



          <tr>
            <td align="left"><font face="Times new Roman" size="3" color="#0E0000">CODIGO PRODUCTO

             </td>

            <td><input type="text" name="codprod" border="1" placeholder="Codigo producto" required></td>
          </tr>

          <tr>
            <td align="left"><font face="Times new Roman" size="3" color="#0E0000">NOMBRE PRODUCTO

             </td>

            <td><input type="TEXT" name="nomprod" border="1" placeholder="Nombre producto" required></td>

            </select>
            </td>
          </tr>


          <tr>
            <td align="left"><font face="Times new Roman" size="3" color="#0E0000">Cantidad
              <font face="Times new Roman" size="3" color="#FF0000">*
             </td>

            <td><input type="number" name="cantprod" border="1" placeholder="cantidad" required></td>
          </tr>



          <tr>
            <td align="left"><font face="Times new Roman" size="3" color="#0E0000">Estado
              <font face="Times new Roman" size="3" color="#FF0000">*
             </td>

            <td> <select name="estprod">
              <option value="1">hay</option>
              <option value="0" selecte>no hay</option>


            </select>
            </td>
          </tr>

	   <td colspan="2" align ="center"><br> <center><input type ="submit" value="INSERTAR PRODUCTO"></center> </td>
    </table>

  </form>




    </body>
</html>
<table border=1 align ="center">
  <tr><th>CODIGO</th><th>NOMBRE</th><th>CANTIDAD</th><th>.</th><th>..</th></tr>
<?php
//1.Database conecction
include ("database.php");
//2.create SQL and stote data
$sql = "SELECT *FROM productos";
$result =$conn->query($sql);

//3. Show data
if($result->num_rows>0){

  while ($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>".$row["codigo_prod"]."</td>";
    echo "<td>".$row["nombre_prod"]."</td>";
    echo "<td>".$row["cantidad"]."</td>";
    echo "<td><img src='icons/edit.png'  width='20'></td>";
    echo "<td><a href='delete_product.php?cod=".$row["codigo_prod"]."'><img src='icons/delete.png'  width='20'></a></td>";
    echo "</tr>";
    }
  }else {
    echo ":::No hay productos registrados";
  }



 ?>
