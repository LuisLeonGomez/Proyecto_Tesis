<?php

require_once "conexion.php";

class ModeloProveedor{

	/*=============================================
	CREAR Proveedor
	=============================================*/

	static public function mdlIngresarProveedor($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(nombre_prov, email_prov, telefono, pag_web) VALUES (:nombre_prov, :email_prov, :telefono, :pag_web)");

		$stmt->bindParam(":nombre_prov", $datos["nombre_prov"], PDO::PARAM_STR);
		$stmt->bindParam(":email_prov", $datos["email_prov"], PDO::PARAM_STR);
		$stmt->bindParam(":telefono", $datos["telefono"], PDO::PARAM_STR);
		$stmt->bindParam(":pag_web", $datos["pag_web"], PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}

	/*=============================================
	MOSTRAR Proveedor
	=============================================*/

	static public function mdlMostrarProveedor($tabla, $item, $valor){

		if($item != null){

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item ORDER BY id DESC");

			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

			$stmt -> execute();

			return $stmt -> fetch();

		}else{

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY id DESC");

			$stmt -> execute();

			return $stmt -> fetchAll();

		}

		$stmt -> close();

		$stmt = null;

	}

	/*=============================================
	EDITAR Proveedor
	=============================================*/

	static public function mdlEditarProveedor($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET nombre_prov = :nombre_prov, email_prov = :email_prov, telefono = :telefono, pag_web = :pag_web WHERE id = :id");

		$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
		$stmt->bindParam(":nombre_prov", $datos["nombre_prov"], PDO::PARAM_STR);
		$stmt->bindParam(":email_prov", $datos["email_prov"], PDO::PARAM_STR);
		$stmt->bindParam(":telefono", $datos["telefono"], PDO::PARAM_STR);
		$stmt->bindParam(":pag_web", $datos["pag_web"], PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

	}

	/*=============================================
	ELIMINAR Proveedor
	=============================================*/

	static public function mdlEliminarProveedor($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

		$stmt -> bindParam(":id", $datos, PDO::PARAM_INT);

		if($stmt -> execute()){

			return "ok";
		
		}else{

			return "error";	

		}

		$stmt -> close();

		$stmt = null;

	}

	/*=============================================
	ACTUALIZAR Proveedor
	=============================================*/

	static public function mdlActualizarProveedor($tabla, $item1, $valor1, $valor){

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET $item1 = :$item1 WHERE id = :id");

		$stmt -> bindParam(":".$item1, $valor1, PDO::PARAM_STR);
		$stmt -> bindParam(":id", $valor, PDO::PARAM_STR);

		if($stmt -> execute()){

			return "ok";
		
		}else{

			return "error";	

		}

		$stmt -> close();

		$stmt = null;

	}

}