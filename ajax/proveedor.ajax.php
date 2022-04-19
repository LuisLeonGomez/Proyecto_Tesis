<?php

require_once "../controladores/proveedor.controlador.php";
require_once "../modelos/proveedor.modelo.php";

class AjaxProveedor{

	/*=============================================
	EDITAR PROVEEDOR
	=============================================*/	

	public $idProveedor;

	public function ajaxEditarProveedor(){

		$item = "id";
		$valor = $this->idProveedor;

		$respuesta = ControladorProveedor::ctrMostrarProveedor($item, $valor);

		echo json_encode($respuesta);


	}

}

/*=============================================
EDITAR Proveedor
=============================================*/	

if(isset($_POST["idProveedor"])){

	$proveedor = new AjaxProveedor();
	$proveedor -> idProveedor = $_POST["idProveedor"];
	$proveedor -> ajaxEditarProveedor();

}