<?php

require_once "conexion.php";

$conexion = conexion();
$sql  = " SELECT SUM(`D1`+`D2`) ,
 SUM(`D2`+`D3`) ,
 SUM(`D3`+`D4`) ,
 SUM(`D5`+`D5`) ,
 SUM(`D7`+`D4`) ,
 SUM(`D6`+`D3`) ,
 SUM(`D2`+`D4`) ,
 SUM(`D8`+`D13`) ,
 SUM(`D13`+`D14`) ,
 SUM(`D12`+`D13`) ,
 SUM(`D10`+`D10`) ,
 SUM(`D8`+`D8`) ,
 SUM(`D7`+`D7`) ,
 SUM(`D12`+`D8`) ,
 SUM(`D5`+`D4`) ,
 SUM(`D10`+`D4`) ,
 SUM(`D4`+`D5`) 
 from datos
 GROUP BY `Nombre` limit 1  ";
 
$resultados = mysqli_query($conexion, $sql);

while( $ver = mysqli_fetch_row($resultados) ){
	$datosVentas[]=$ver[0]; 
	$datosVentas[]=$ver[1]; 
	$datosVentas[]=$ver[2]; 	
	$datosVentas[]=$ver[3];
    
    
    $datosVentas2021[]=$ver[4]; 
	$datosVentas2021[]=$ver[5]; 
	$datosVentas2021[]=$ver[6]; 	
	$datosVentas2021[]=$ver[7];

    $datosVentas2022[]=$ver[8]; 
	$datosVentas2022[]=$ver[9]; 
	$datosVentas2022[]=$ver[10]; 	
	$datosVentas2022[]=$ver[11];

    $datosVentas2023[]=$ver[12]; 
	$datosVentas2023[]=$ver[13]; 
	$datosVentas2023[]=$ver[14]; 	
	$datosVentas2023[]=$ver[0];

    $datosVentas2024[]=$ver[1]; 
	$datosVentas2024[]=$ver[2]; 
	$datosVentas2024[]=$ver[3]; 	
	$datosVentas2024[]=$ver[11];
    
    $datosVentas2025[]=$ver[5]; 
	$datosVentas2025[]=$ver[2]; 
	$datosVentas2025[]=$ver[10]; 	
	$datosVentas2025[]=$ver[11];
    
}



$etiquetas = ["Enero", "Febrero", "Marzo", "Abril"];

$respuesta = [
    "etiquetas" => $etiquetas,
    "datos" => $datosVentas,
    "datos2021" => $datosVentas2021,
    "datos2022" => $datosVentas2022,
    "datos2023" => $datosVentas2023,
    "datos2024" => $datosVentas2024,
    "datos2025" => $datosVentas2025,
];

echo json_encode($respuesta);
?>