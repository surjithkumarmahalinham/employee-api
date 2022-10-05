<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\User;
use App\Models\Employee;
use App\Imports\EmployeeImport;
use Hash;
use Auth;
use Validator;
use Excel;
use DB;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $rules =  [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'mobile' => 'required',
            'password' => 'required'
        ];

        $input     = $request->only('name','email','mobile','password');
        $validator = Validator::make($input, $rules);

        if ($validator->fails()) {
            return response()->json(['error_msg' => $validator->messages()]);
        }

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'mobile' => $request->mobile,
            'password' => Hash::make($request->password),
        ]);

        $token = $user->createToken('Token')->accessToken;
        return response()->json(['token'=>$token,'user'=>$user],200);
    }
    public function login(Request $request)
    {
        $this->validate($request,[
                'email' => 'required',
                'password' => 'required',
            ]);

        $data = [
            'email'=>$request->email,
            'password'=>$request->password
        ];

        if(Auth::attempt($data)){

            $token = auth()->user()->createToken('Token')->accessToken;
            return response()->json(['status_code'=>200,'msg'=>'Loging successfully','token'=>$token],200);
        }else{
            return response()->json(['error'=>'Unauthorized'],401);
        }
    }
    public function loggeduser()
    {
        $user = auth()->user();
        return response()->json(['user'=>$user],200);
    }
    public function logout(Request $request)
    {
        $token = $request->user()->token();
        $token->revoke();
        return response()->json(['status_code'=>200,'success'=> 'Logout successfully!']);

    }
    public function add_employee(Request $request)
    {
       $rules =  [
            'emp_id' => 'required',
            'emp_name' => 'required',
            'emp_email' => 'required|email|unique:employees,emp_email',
            'emp_phone' => 'required',
            'emp_gender' => 'required',
            'emp_date_of_join' => 'required',
            'emp_salary' => 'required',
            'emp_image' => 'required'
        ];

        $input     = $request->only('emp_id','emp_name','emp_email','emp_phone','emp_gender','emp_date_of_join','emp_salary','emp_image');
        $validator = Validator::make($input, $rules);

        if ($validator->fails()) {
            return response()->json(['error_msg' => $validator->messages()]);
        }

        $employee = new Employee();
        $employee->emp_id = $request->emp_id;
        $employee->emp_name = $request->emp_name;
        $employee->emp_email = $request->emp_email;
        $employee->emp_phone = $request->emp_phone;
        $employee->emp_gender = $request->emp_gender;
        $employee->emp_date_of_join = $request->emp_date_of_join;
        $employee->emp_salary = $request->emp_salary;

        if($request->hasFile('emp_image'))
        {
            $num = rand(1000000000,10000000000);
            $image = $num.'.'.$request->emp_image->getClientOriginalExtension();
            $request->emp_image->move(public_path('employees/'),$image);
            $employee->emp_image = $image;
        }
        $employee->save();

        return response(['status_code'=>200,'success'=> 'Employee add successfully!','data'=>$employee]);
    }
    public function get_employee()
    {
        $employee_list = Employee::all();

        return response()->json(['employess_list'=>$employee_list]);
    }
    public function bulkimport(Request $request){

    $employee = Excel::toArray(new Employee(), $request->file('bulkfile'));

    foreach($employee[0] as $row) {
        $arr[] =  [
             'emp_id' => $row[0],
             'emp_name' => $row[1], 
             'emp_gender' => $row[2],
             'emp_email' => $row[3],
             'emp_phone' => $row[4],
             'emp_date_of_join' => $row[5],
             'emp_salary' => $row[6],
         ];

        }
      

    if(!empty($arr)){
        DB::table('employees')->insert($arr);
        return response()->json(['status_code'=>200,'success'=> 'Import successfully!']);
    }
    else{
        return response()->json(['error'=> 'Data not stored']);
    }
      
   }
}
