<?php
namespace App;
use League\Fractal;
use App\Book;


 class BookTransformer extends Fractal\TransformerAbstract
    {
        public function transform(Book $book)
        {
            return [
                'id' => (int) $book->id,
                'title' => $book->title,
                'created_at' => $book->created_at,
                'updated_at' => $book->updated_at
            ];
        }
    }

