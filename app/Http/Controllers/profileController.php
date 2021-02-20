<?php

namespace App\Http\Controllers;

use Auth;
use App\User;
use Illuminate\Validation\Rule;
use Illuminate\Http\Request;

class profileController extends Controller
{
    public function index(){
        $user = Auth::user();
        return view('pages.profile', ['user' => $user]);
    }

    public function update(Request $request){
        $this->validate($request, [
            'name' => 'required',
            'email' => [
                'required',
                'email',
                Rule::unique('users')->ignore(Auth::user()->id)
            ],
            'avatar' => 'nullable|image'
        ]);

        $user = Auth::user();
        $user->edit($request->all());
        $user->generatePassword($request->get('password'));
        $user->uploadAvatar($request->file('avatar'));

        return redirect()->back()->with('status', 'profile updated successfully');
    }
}
