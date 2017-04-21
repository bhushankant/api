<?php
namespace App\Http\Controllers;
use Chrisbjr\ApiGuard\Http\Controllers\ApiGuardController;
use EllipseSynergie\ApiResponse;
use Illuminate\Http\Request;
use App\Book;
use App\BookTransformer;
  
class BooksController extends ApiGuardController{
    
   
// FOR EXTRA CONTROLLING ON API
   protected $apiMethods = [
         'all' => [
             'keyAuthentication' => false
         ],  
     ];
//     protected $apiMethods = [
//        'show' => [
//            'level' => 10
//        ],
//    ];
//     
//      protected $apiMethods = [
//        'show' => [
//            'limits' => [
//                'key' => [
//                    'increment' => '1 hour',
//                    'limit' => 100
//                ]
//            ]
//        ],
//    ];
//      
//      protected $apiMethods = [
//        'show' => [
//            'limits' => [
//                'method' => [
//                    'increment' => '1 day',
//                    'limit' => 1000
//                ]
//            ]
//        ],
//    ];
//      
//       protected $apiMethods = [
//        'show' => [
//            'logged' => true
//        ]
//    ];

    
    public function all()
    {
       //Reference URL
       //https://github.com/chrisbjr/api-guard
       //This is for generating API Key
        // echo $apiKey = \Chrisbjr\ApiGuard\Models\ApiKey::make();
        //opions for make:=> make($userId = null, $level = 10, $ignoreLimits = false)
       //This is for calling API Through curl
       //curl --header "X-Authorization: 7643eaac6ba7550ff5300952e72dea839fde4f85" http://localhost/api/api/v1/books
       
        $books = Book::all();
        return $this->response->withCollection($books, new BookTransformer);
      }
      
      
     

    public function store(Request $request)
    {
         try {
            //print_r($request->all()); exit; 
            $data  = $request->all(); 
            

            Book::insert($data);
             return response(array(
               'error' => false,
                'data' =>$data,
                 'message'=>"Books successfully created",
               ),200);
            //return $this->response->withCollection($data, '', "Product created successfully");

        }catch (ModelNotFoundException $e) {

            return $this->response->errorNotFound();

        }
      
    }

    
      
    public function show($id)
    {
        try {

            $book = Book::findOrFail($id);

            return $this->response->withItem($book, new BookTransformer);

        } catch (ModelNotFoundException $e) {

            return $this->response->errorNotFound();

        }
    }
    
    public function delete($id)
    {
        //Try to get the book
        $book = Book::find($id);

        //Book not found sorry !
        if(!$book){
            return $this->response->errorNotFound('Book Not Found');
        }
    }
    
    // Here there is no need of contructor
     /**
     * @param Response
     */
//    public function __construct(Response $response)
//    {
//        $this->response = $response;
//    }
//    

    /**
    * Example returning collection
    */
    public function index1()
    {
        //Get all books
        $books = Book::all();

        // Return a collection of $books
        return $this->response->withCollection($books, new BookTransformer);
    }

    /**
    * Example returning collection with custom key
    */
    public function index2()
    {
        //Get all books
        $books = Book::all();

        //Custom key
        $customKey = 'books';

        // Return a collection of books
        return $this->response->withCollection($books, new BookTransformer, $customKey);
    }

    /**
    * Example returning collection with paginator
    */
    public function index3()
    {
        //Get all books
        $books = Book::paginate(15);

       // Return a collection of $books with pagination
       return $this->response->withPaginator(
           $books,
           new BookTransformer
       );
    }

    /**
    * Example returning collection with paginator with custom key and meta
    */
    public function index4()
    {
        //Get all books
        $books = Book::paginate(15);

        //Custom key
        $customKey = 'books';

        //Custom meta
        $meta = [
            'category' => 'fantasy'
        ];

       // Return a collection of $books with pagination
       return $this->response->withPaginator(
           $books,
           new BookTransformer,
           $customKey,
           $meta
       );
    }

    /**
    * Example returning item
    */
    public function show2($id)
    {
        //Get the book
        $book = Book::find($id);

        // Return a single book
        return $this->response->withItem($book, new BookTransformer);
    }

    /**
    * Example returning item with a custom key and meta
    */
    public function showWithCustomKeyAndMeta($id)
    {
        //Get the book
        $book = Book::find($id);

        //Custom key
        $customKey = 'book';

        //Custom meta
        $meta = [
            'readers' => $book->readers
        ];

        // Return a single book
        return $this->response->withItem($book, new BookTransformer, $customKey, $meta);
    }

    /**
    * Example resource not found
    */
    public function delete_second($id)
    {
        //Try to get the book
        $book = Book::find($id);

        //Book not found sorry !
        if(!$book){
            return $this->response->errorNotFound('Book Not Found');
        }
    }

    /**
    * Example method not implemented
    */
    public function whatAreYouTryingToDo()
    {
        return $this->response->errorMethodNotAllowed("Please don't try this again !");
    }
    //================================================================================================
   // These are the other ways to give response in json. Use Above process to give response in json. 
    
//    public function index_old(Request $request)
//    {
//        $products = Product::paginate(5);
//        return response(array(
//                'error' => false,
//                'products' =>$products->toArray(),
//               ),200);       
//    }
//    public function store_old(Request $request)
//    {
//        Product::create($request->all());
//        return response(array(
//                'error' => false,
//                'message' =>'Product created successfully',
//               ),200);
//    }
//    public function show_old($id)
//    {
//        $product = Product::find($id);
//        return response(array(
//                'error' => false,
//                'product' =>$product,
//               ),200);
//    } 
//    public function update_old(Request $request, $id)
//    {
//        Product::find($id)->update($request->all());
//        return response(array(
//                'error' => false,
//                'message' =>'Product updated successfully',
//               ),200);
//    }
//    public function destroy_old($id)
//    {
//        Product::find($id)->delete();
//        return response(array(
//                'error' => false,
//                'message' =>'Product deleted successfully',
//               ),200);
//    }
//    

}

