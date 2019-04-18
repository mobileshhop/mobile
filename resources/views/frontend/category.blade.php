@extends('frontend.master')
@section('title','Danh Mục Sản Phẩm')
@section('linkcss')
	<link rel="stylesheet" href="css/category.css">	
@endsection
@section('main')
<div id="wrap-inner">
		<div class="products">
			<h3>{{$cateName->cate_name}}</h3>
			<div class="product-list row">
				@foreach ($listproduct_category as $prod_cate)
					<div class="product-item col-md-3 col-sm-6 col-xs-12">
						<a href="#"><img src="{{asset('../storage/app/avatar/'.$prod_cate->prod_img)}}" class="img-thumbnail"></a>
						<p><a href="#">{{$prod_cate->prod_name}}</a></p>
						<p class="price">{{number_format($prod_cate->prod_price,0,',','0')}}</p>	  
						<div class="marsk">
							<a href="{{asset('detail/'.$prod_cate->prod_id.'/'.$prod_cate->prod_slug.'.html')}}">Xem chi tiết</a>
						</div>                                    
					</div>
				@endforeach	
			</div>                	                	
		</div>

		<div id="pagination">
			{{ $listproduct_category->links() }}
		</div>
	</div>
@endsection	