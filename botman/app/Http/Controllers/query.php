<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class query extends Controller
{
    //
    //private static 
    private $user="";
     public static function GetSecciones(){

	    return $result = DB::table('productos')->select('seccion')->groupBy('seccion')->get();
	   //return $section;
	   
    }
    //productos de la secion
    public static function GetProductoSecion($item){
    	return $result= DB::table('productos')->select('nombre_articulo')->where('seccion',$item)->groupBy('nombre_articulo')->get();
    	$list ="";
	    $bool=true;
	    foreach ($result as $value) {
	        if($bool){
	        	$list=$value->seccion;
	        	$bool=false;
	        }else{
	        	$list = $list . ', ' . $value->seccion;
	        }
	    }
    }
    //precio del un producto
    public static function GetPrecioProducto($item){
    	return $result=DB::table('productos')->select('precio')->where('nombre_articulo',$item)->get();
    }
    //votar stock
    public static function GetStockProduto($item){
    	return $result=DB::table('productos')->select('stock')->where('nombre_articulo',$item)->get();

    }
    //consultar si existe el cliente por su doucemto de identidad  // enviado
    public static function GetEstado($item){
    	$result=DB::table('clientes')->select('codigo_cliente')->where('codigo_cliente',$item)->get();    	
    	//global $user = $result->codigo_cliente;
    		if(empty($result->codigo_cliente)){
				//
				return true;
			}else{
				return false;
			}
    	
    }
    //despues de consultar por d.i preguntar por el numero de la factura //enviado
    public static function GetNroFactura($item){
    	return $result=DB::table('pedidos')->select('enviado')->where('numero_pedido',$item)->get();

    }
    //
}
