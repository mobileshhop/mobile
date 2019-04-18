<?php

use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $data =[
            [    
            'cate_name'=>'iPhone',
    		'cate_slug'=>str_slug('iphone')
            ],
            [    
                'cate_name'=>'Samsung',
                'cate_slug'=>str_slug('samsung')
            ],
        ];

        DB::table('mb_categories')->insert($data);
    }
}
