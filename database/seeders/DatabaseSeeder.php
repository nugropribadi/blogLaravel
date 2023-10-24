<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::create([
                'name' => 'Arkan Karim',
                'username' => 'Kann',
                'email' => 'arkan@gmail.com',
                'password' => Hash::make('arkan')
            ]);
            
        // User::create([
        //     'name' => 'Gita Sekar Andarini',
        //     'email' => 'gita@gmail.com',
        //     'password' => Hash::make('gita')
        // ]);
        
        User::factory(3)->create();

        Category::create([
            'nama' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'nama' => 'web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'nama' => 'Personal',
            'slug' => 'personal'
        ]);


        Post::factory(20)->create();
        

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex commodi aut ipsum molestias, quae unde beatae eaque illo, maiores similique voluptatibus',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo, et.fugit rem laborum veritatis recusandae architecto! Dolor fugiat magni possimus quam molestiae tempore perspiciatis, quod nam temporibus dolorem itaque aut nesciunt et mollitia dignissimos explicabo quaerat blanditiis hic, laborum animi ut ipsam amet. Fuga repellendus maxime vitae quae hic officiis, voluptatibus voluptas molestiae quam architecto sed, perferendis quo debitis quis consequatur et modi voluptatum, eos ratione a veniam eaque corporis! Neque voluptatum inventore dicta, quasi assumenda deleniti optio reiciendis magni vel maiores repudiandae pariatur laboriosam corrupti reprehenderit exercitationem quidem?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);


        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex commodi aut ipsum molestias, quae unde beatae eaque illo, maiores similique voluptatibus',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo, et.fugit rem laborum veritatis recusandae architecto! Dolor fugiat magni possimus quam molestiae tempore perspiciatis, quod nam temporibus dolorem itaque aut nesciunt et mollitia dignissimos explicabo quaerat blanditiis hic, laborum animi ut ipsam amet. Fuga repellendus maxime vitae quae hic officiis, voluptatibus voluptas molestiae quam architecto sed, perferendis quo debitis quis consequatur et modi voluptatum, eos ratione a veniam eaque corporis! Neque voluptatum inventore dicta, quasi assumenda deleniti optio reiciendis magni vel maiores repudiandae pariatur laboriosam corrupti reprehenderit exercitationem quidem?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex commodi aut ipsum molestias, quae unde beatae eaque illo, maiores similique voluptatibus',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo, et.fugit rem laborum veritatis recusandae architecto! Dolor fugiat magni possimus quam molestiae tempore perspiciatis, quod nam temporibus dolorem itaque aut nesciunt et mollitia dignissimos explicabo quaerat blanditiis hic, laborum animi ut ipsam amet. Fuga repellendus maxime vitae quae hic officiis, voluptatibus voluptas molestiae quam architecto sed, perferendis quo debitis quis consequatur et modi voluptatum, eos ratione a veniam eaque corporis! Neque voluptatum inventore dicta, quasi assumenda deleniti optio reiciendis magni vel maiores repudiandae pariatur laboriosam corrupti reprehenderit exercitationem quidem?',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex commodi aut ipsum molestias, quae unde beatae eaque illo, maiores similique voluptatibus',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo, et.fugit rem laborum veritatis recusandae architecto! Dolor fugiat magni possimus quam molestiae tempore perspiciatis, quod nam temporibus dolorem itaque aut nesciunt et mollitia dignissimos explicabo quaerat blanditiis hic, laborum animi ut ipsam amet. Fuga repellendus maxime vitae quae hic officiis, voluptatibus voluptas molestiae quam architecto sed, perferendis quo debitis quis consequatur et modi voluptatum, eos ratione a veniam eaque corporis! Neque voluptatum inventore dicta, quasi assumenda deleniti optio reiciendis magni vel maiores repudiandae pariatur laboriosam corrupti reprehenderit exercitationem quidem?',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
