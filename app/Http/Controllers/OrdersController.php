<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\client;
use App\order;

class OrdersController extends Controller
{
    public function clientOrders(Request $req)
    {

    	$clientExits = client::whereMobile($req->mobile)->get();
    	
    	if(count($clientExits) == 0){
	    	$client = new client();
	    	$client->name = $req->name;
	    	$client->mobile = $req->mobile;
	    	$client->address = $req->address;
	    	$client->save();

	    	$clientId = $client->id;
	   	}else{
	   		$clientId = $clientExits[0]->id;
	   	}
	   	
	   foreach ($req->clientCart as $key => $value) {

	   		$ord = new order();
	   		$ord->client_id = $clientId;
	   		$ord->product_id = $value['id'];
	   		$ord->product_name = $value['name'];
	   		$ord->product_qty = $value['quantity'];
	   		$ord->price = $value['price'];
	   		$ord->save();
	   	}	
    	
    	return response()
            ->json(['status' => 'success', 'data' => $ord]);
    }

    public function getClientOrders(){
    	return client::with('orders')->get();
    }
}
