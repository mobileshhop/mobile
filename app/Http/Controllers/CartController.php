<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cart;
use App\Model\Product;
use Mail;

class CartController extends Controller
{
    //
    public function getAddCart($id){
        $product = Product::find($id);
        Cart::add(['id' => '$id', 'name' => $product->prod_name, 'qty' => 1, 'price' => $product->prod_price, 'options' => ['img' => $product->prod_img]]);
        return redirect('cart/show');
    }

    public function getShowCart(){
        // Tính Tổng Tiền
        $data['total'] = Cart::total();
        //Lấy Ra Sản Phẩm Trong Giỏ
        $data['items'] = Cart::content();
        return view('frontend.cart',$data);
    }

    public function getDeleteCart($id){
        if ($id == 'all') {
            Cart::destroy();
        } else {
            Cart::remove($id);
        }
        return back();
        
    }

    public function getUpdateCart(Request $request){
        Cart::update($request->rowId,$request->qty);
    }

    public function postComplete(Request $request){
        $data['info'] = $request->all();
        $data['cart'] = Cart::content();
        $data['total'] = Cart::total();
        $email = $request->email;
        Mail::send('frontend.email',$data,function($message) use ($email){
            // gửi từ ai
            $message->from('luckyblack1100@gmail.com','MobileShop');
            // gửi tới ai
            $message->to($email,$email);
            //gửi thêm email cho chủ cửa hàng
            $message->cc('anhlong651998@gmail.com','Trần Duy Long');
            // tiêu đề email
            $message->subject('Xác Nhận Hóa Đơn Mua Hàng MobileShop');
        });
        Cart::destroy();
        return redirect('complete');
    }

    public function getComplete(){
        return view('frontend.complete');
    }
}
