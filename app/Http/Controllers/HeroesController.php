<?php
namespace App\Http\Controllers;
use Chrisbjr\ApiGuard\Http\Controllers\ApiGuardController;
use EllipseSynergie\ApiResponse;
use Illuminate\Http\Request;
use App\Hero;
use App\HeroTransformer;
use DB;
use Auth;
use Hash;
use Validator;
//This is for testing purposes. 
//This is for testing purposes Another one. 
//This is for testing purposes Another one. 
// This is again testing.

class HeroesController extends ApiGuardController{
    
  
     protected $apiMethods = [
         'do_login' => [
             'keyAuthentication' => false
         ],

         'for_check' => [
             'keyAuthentication' => false
         ],

         'do_register' => [
             'keyAuthentication' => false 
         ],   
     ];
     
    public function index()
    {
            $heroes = Hero::all();
            return response(array(
                     'error' => false,
                    'heroes' =>$heroes->toArray(),
             ),200);       
    }

    public function for_check(Request $request)
    {
          
            $imageName = md5(microtime()) . '.' . 
            $request->file('image')->getClientOriginalExtension();

            $request->file('image')->move(
                base_path() . '/public/images/catalog/', $imageName
            );
            $all = $request->all();
            $key = $all["key"];
       
            $full_image_path = '/public/images/catalog/'.$imageName;
            $key_detail = DB::table('api_keys')->where('key',$key)->first();
            $data = ["user_id" => $key_detail->user_id, "image"=>$full_image_path];
            DB::table('images')->insert($data);
            return response(array(
                'error' => false,
                'image' =>$data,
               ),200);

    }

    public function store(Request $request)
    {
         $hero = $request->all();
        DB::table('heroes')->insert($hero);
        return response(array(
                'error' => false,
                'hero' =>$hero,
               ),200);
    }

    public function show($id)
    {
        $hero = Hero::find($id);
        return response(array(
                'error' => false,
                'hero' =>$hero,
               ),200);
    } 

    public function update(Request $request, $id)
    {
        $hero = $request->all();
        DB::table('heroes')->where('id',$id)->update($hero);
        return response(array(
                'error' => false,
                'message' =>'Hero updated successfully',
               ),200);
    }


    public function destroy($id)
    {
        Hero::find($id)->delete();
        return response(array(
                'error' => false,
                'message' =>'Hero deleted successfully',
               ),200);
    }

     public function search(Request $request)
    {
        
        $term = $request->get('term');
        $results = array();
        $heroes = DB::table('heroes')->where('name', 'LIKE', '%' . $term . '%')->get();
        return response(array(
                     'error' => false,
                    'heroes' =>$heroes->toArray(),
             ),200);
    }

   public function do_login(Request $request) {

        $me = $request->all();
        
        
        if (\Auth::attempt(['email' => $me["email"], 'password' => $me["password"]])) {
             $key_details = DB::table('api_keys')->where('user_id',Auth::user()->id)->first();
            
             //$user = DB::table('users')->where('id',Auth::user()->id)->first();
            // $data = ["name"=>$user->name, "email"=>$user->email, "password"=>$user->password, "key"=>$key_details->key];
             return response(array(
                'error' => false,
                'user' =>$key_details,
               ),200);
          
        }

      return response()->json([
                    'success' => 'false',
                    'error'  => "Login Failed",
                ], 400);
         
    }


    public function do_register(Request $request) {

       
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|Between:3,64|Email|unique:users',
            'password' => 'required|Between:4,15'
        ]);

        if ($validator->fails()) {

             return response()->json([
            'success' => 'false',
            'errors'  => $validator->errors()->all(),
        ], 200 );
       }


     try
        {
            $form_data = $me = $request->all();
            if (!empty($form_data["password"])) {
                $form_data['password'] = \Hash::make($form_data['password']);
            }

            $form_data["created_at"] = date("Y-m-d h:i:s", strtotime("now"));
            $last_id = DB::table('users')->insertGetId($form_data);
            $apiKey = \Chrisbjr\ApiGuard\Models\ApiKey::make($last_id, $level = 10000, $ignoreLimits = false);
            $key_details = DB::table('api_keys')->where('user_id',$last_id )->first();
           // $user = DB::table('users')->where('id',$last_id )->first();
        
            //$data = ["name"=>$user->name, "email"=>$user->email, "password"=>$user->password, "key"=>$key_details->key];
            return response(array(
                'error' => false,
                'user' =>$key_details,
               ),200);
            
        }
        catch(Exception $e)
        {
                return response()->json([
                    'success' => 'false',
                    'errors'  => $e->getMessage(),
                ], 200);
        }

   
    }

}

