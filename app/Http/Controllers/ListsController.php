<?php
namespace App\Http\Controllers;
use Chrisbjr\ApiGuard\Http\Controllers\ApiGuardController;
use EllipseSynergie\ApiResponse;
use Illuminate\Http\Request;
use App\Book;
use App\HeroTransformer;
use DB;
use Auth;

  
class ListsController extends ApiGuardController{
  
   
   
    public function index()
        {
            $books = Book::all();
            return response(array(
                     'error' => false,
                    'heroes' =>$books->toArray(),
             ),200);       
    }

  
    public function store(Request $request)
    {
         $book = $request->all();
        DB::table('books')->insert($book);
        return response(array(
                'error' => false,
                'hero' =>$hero,
               ),200);
    }

   

    public function show($id)
    {
        $book = Book::find($id);
        return response(array(
                'error' => false,
                'hero' =>$book,
               ),200);
    } 

    public function update(Request $request, $id)
    {
        $book = $request->all();
        DB::table('books')->where('id',$id)->update($book);
        return response(array(
                'error' => false,
                'message' =>'Hero updated successfully',
               ),200);
    }

    public function destroy($id)
    {
        Book::find($id)->delete();
        return response(array(
                'error' => false,
                'message' =>'Hero deleted successfully',
               ),200);
    }

    

}

