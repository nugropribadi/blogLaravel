<?php

namespace App\Models;

use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory, Sluggable;

    protected $guarded = ['id'];

    protected $with = ['category', 'author'];

    public function scopeFilter($query, array $filters)
    {
        // membuat fitur search
        $query->when($filters['search'] ?? false, function($query, $search) {
            return $query->where('title', 'like', '%' . $search  . '%')
            ->orWhere('body', 'like', '%' . $search  . '%');
        });

        // penulisan versi callback 
        $query->when($filters['search'] ?? false, function ($query, $category){
            return $query->whereHas('category', function ($query) use ($category){
                $query->where('slug', $category);
            });
        });

        // penulisan versi arrow function
        $query->when($filters['author'] ?? false, fn($query, $author) =>
            $query->whereHas('author', fn($query) =>
                $query->where('username', $author)
            )
        );
    }



    // fungsi untuk menyambungkan relasi foreign id
    public function category()
    {
        return $this->belongsTo(Category::class);
    }


    // agar tetap sama dalam mengambil user_id walau beda nama functionnya yaitu author,  kita akan memakai cara ini, jadi user_id ditulis di dalam return agar bisa dijadikan prioritas walau functionya beda dengan nama foreign key
    public function author()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function getRouteKeyName(): string
    {
        return 'slug';
    }

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }
};
