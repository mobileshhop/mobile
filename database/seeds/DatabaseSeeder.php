<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
    	$data=[
    		'email'=>'mobileadmin@gmail.com',
    		'password'=>bcrypt('12345'),
    		'level'=>1
    	];
        DB::table('mb_users')->insert($data);
    }
}
