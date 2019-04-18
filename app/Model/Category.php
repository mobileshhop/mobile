<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    //
    protected $table = 'mb_categories';
    protected $primaryKey = 'cate_id';
    protected $guarded = [];
}
