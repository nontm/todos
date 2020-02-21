<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateFolder;
use App\Folder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class FolderController extends Controller
{
    
    public function showCreateForm()
    {
        return view('folders/create');
    }

    // 引数にインポートしたRequestクラスを受け入れる
    public function create(CreateFolder $request)
    {
        // フォルダモデルのインスタンスを作成する
        $folder = new Folder();
        // タイトルに入力値を代入する
        $folder->title = $request->title;
        // インスタンスの状態をデータベースに書き込む
        //$folder->save();　認証機能追加後↓
        // ★ ユーザーに紐づけて保存
        Auth::user()->folders()->save($folder);

        return redirect()->route('tasks.index', [
            'id' => $folder->id,
        ]);
    }

}


