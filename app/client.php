<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class client extends Model
{
    public function orders()
    {
    	return $this->hasMany(order::class);
    }

}
