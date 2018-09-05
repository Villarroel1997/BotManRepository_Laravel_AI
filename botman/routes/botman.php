<?php

use App\Http\Controllers\BotManController;
use App\Cliente;
use App\Pedido;
use App\Producto;
use App\Http\Controllers\query;

function respuestaDefault(){
	$re=[
		"Disculpa no te entiendo",
		"Disculpa",
		"lo puedes repetir"
	];
	$var=rand(0,2);
	return $re[$var];
}

$botman = resolve('botman');

$botman->fallback(function($bot){

$bot->typesAndWaits(2); $bot->reply(respuestaDefault());
});



$botman->hears('Hi|Hola|hola|Hello|hello', function ($bot) {
    $bot->reply('Bienvenido a Mini-Mark! soy PleyBot');
    $bot->reply('¿Cual es tu nombre?');
});
$botman->hears('mi nombre es {item}', function ($bot,$item) {
    $bot->reply('hola ' .$item.' ¿En que puedo ayudarte? ');
});
$botman->hears('quisiera saber si mi pedido ya a sido enviado', function ($bot) {
    $bot->reply('claro, me podria brindar su ci para verificar');
});
$botman->hears('claro mi numero de ci es {item}', function ($bot,$item) {
    $result=query::GetEstado($item);
    if (!empty($item)) {

        if ($result==true){
            $bot->reply('bueno, ahora me podria brindar su nemero de pedido');
        }else{
            $bot->reply('disculpe pero no esta registrado, vuelva a intentarlo');    
        }   
        
    }else{
        $bot->reply('¿cual es tu numero de ci?');
    }
});
$botman->hears('claro mi numero de pedido es {item}', function ($bot,$item) {
     $result=query::GetNroFactura($item);
    if (!empty($item)) {

        if ( $result==true){
            $bot->reply('Su pedido ya a sido enviado');
            $bot->reply('Disculpe las molestia muy pronto su pedido llegara');
        }else{
             $bot->reply('Su pedido ya no a sido enviado');
            $bot->reply('Disculpe las molestia muy pronto su pedido lo enviaremos');   
        }   
        
    }else{
        $bot->reply('¿cual es tu numero de pedido?');
    }
});

$botman->hears('bueno gracias', function ($bot) {
    $bot->reply('gracias a usted, le podemos ayudar en algo mas');
});

$botman->hears('si me puede mostrar sus secciones', function ($bot) {
   
     $result=query::GetSecciones();
    if(!empty($result)){
        $bot->reply("Nuestras secciones son: ");
        $bool=true;
        foreach ($result as $value) {
            if($bool){
                $bot->reply($value->seccion); 
                $bool=false;
            }else{
                $bot->reply($value->seccion); 
            }
        }
        
    }else{
        respuestaDefault();
    }
   
});

$botman->hears('me interesa la seccion de {item}', function ($bot,$item) {
    $result=query::GetProductoSecion($item);
   $bot->reply('tenemos estos productos disponibles en la seccion de '.$result->stock.' ');
    $bot->reply('Le interesa algunos de ellos ');

});



$botman->hears('si me interesa el producto de {item}', function ($bot,$item) {         
         $bot->reply('ohh muy buena eleccion tiene muy buen ojo');
});

$botman->hears('gracias me puede decir el precio de {item}', function ($bot,$item) {
            $result=query::GetPrecioProducto($item);
            $bot->reply('el precio de '.$item.' es de '. $result->precio .'');
});



$botman->hears('ohh muchas gracias pasare mañana por la tienda', function ($bot) {

            $bot->reply('a usted gracias por comunicarse con nosotros nos vemos mañana señor, lo estaremos esperando ');
});



//retorna las seciones    
$botman->hears('secciones', function($bot){
    $result=query::GetSecciones();
    if(!empty($result)){
        $bot->reply("Nuestras secciones son: ");
        $bool=true;
        foreach ($result as $value) {
            if($bool){
                $bot->reply($value->seccion); 
                $bool=false;
            }else{
                $bot->reply($value->seccion); 
            }
        }
        
    }else{
        respuestaDefault();
    }
});
//retorna productos de una seccion
$botman->hears('productos de las seccion {item}', function ($bot,$item) {   
    if (!empty($item)) {
        $result=query::GetProductoSecion($item);
        $bot->reply('Los productos de la seccion ' . $$result->stock . 'son:');
    }else{
        $bot->reply('puedes repetir');
    }
});






$botman->hears('Start conversation', BotManController::class.'@startConversation');
