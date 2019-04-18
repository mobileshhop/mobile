<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //
    protected $table = 'mb_products';
    protected $primaryKey = 'prod_id';
    protected $guarded = [];
}
