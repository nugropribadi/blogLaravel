<?php

namespace App\Models;



class Post
{
    private static $blog_post = [
        [
            'title' => 'Judul pertama',
            'slug' => 'judul-pertama',
            'author' => 'Arkan',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem sapiente eveniet recusandae aperiam veritatis, nulla adipisci deserunt neque! Nisi, molestiae.'
        ],
        [
            'title' => 'Judul kedua',
            'slug' => 'judul-kedua',
            'author' => 'Karim',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem sapiente eveniet recusandae aperiam veritatis, nulla adipisci deserunt neque! Nisi, molestiae.'
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_post);
    }

    public static function find($slug)
    {
        $posts = static::all();
        // $post = [];
        // foreach ($posts as $p) {
        //     if ($p['slug'] === $slug)
        //         $post = $p;
        // }
        return $posts->firstWhere('slug', $slug);
    }
}
