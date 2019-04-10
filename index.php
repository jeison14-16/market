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