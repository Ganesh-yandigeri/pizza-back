<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class ProductController extends Controller
{
    public function addPizza(Request $req){
        
    	if($req->hasfile('pizza_img')) 
		{ 
		  $file = $req->file('pizza_img');
		  $extension = $file->getClientOriginalExtension(); // getting image extension
		  $filename =time().'.'.$extension;
		  $file->move('uploads/pizza/', $filename);
		}

		$product = new Product();
		$product->name = $req->name;
		$product->description = $req->description;
		$product->price = $req->price;
    	$product->image = 'uploads/pizza/'.$filename;
    	$product->save();

    	return response()
            ->json(['status' => 'success', 'data' => $product]);
    }

    public function getPizza()
    {
    	return response()
            ->json(['status' => 'success', 'data' => Product::all()]);
    }
}
