<?php
$codigo =$_GET['cod'];
//1.Database connection
include("database.php");
//2. Crear el sql de eliminacion
$sql ="DELETE FROM productos WHERE codigo_prod = '$codigo' ";
//3.execute SQL
$conn->query($sql);
//4.confirme la transaccion
echo "<script languaje='javascript'>alert(':::Producto eliminado con exitos:::')</script>";
header("Refresh: 0; url=index.php");



?>
