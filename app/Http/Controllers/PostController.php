<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        $title = '';
        if(request('category'))
        {
            $category = Category::firstWhere('slug', request('category'));
            $title = ' in ' . $category->nama;
        }

        if(request('author'))
        {
            $author = User::firstWhere('username', request('author'));
            $title = ' By ' . $author->name;
        }
        return view('posts', [
            'title' => 'All Post' . $title,
            'active' => 'posts',
            // perbedaan lazy loading dengan eager loading
            // lazy loading
            // 'posts' => Post::latest()->get()

            // eager loading
            // menggunakan with yang ada di Post model, bisa saja langsung dengan menggunakan with([..., ...])
            
            'posts' => Post::latest()->filter(request(['search', 'category', 'author']))->paginate(7)->withQueryString()
            // filter dapat dari model post (scopeFilter)
        ]);
    }

    public function show(Post $post)
    {
        return view('post', [
            'title' => 'Single post',
            'active' => 'posts',
            'post' => $post
        ]);
    }
}
