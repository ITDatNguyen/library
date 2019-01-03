<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		
		DB::table('users')->insert([
            'id'     => '',
			'name'     => 'Shashank',
			'email'    => 'shashank@codershood.info',
			'password' => Hash::make('shashank'),
			'mobile'=>'098765432',
			'isVerified'=>0	
        ]);
	}

}
