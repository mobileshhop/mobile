@extends('frontend.master')
@section('title','Tìm Kiếm')
@section('linkcss')
	<link rel="stylesheet" href="css/search.css">
@endsection
@section('main')
<div id="wrap-inner">
	<div class="products">
			<h3>Tìm kiếm với từ khóa: <span>{{$key}}</span></h3>
			<div class="product-list row">
				@foreach ($searchs as $search)
					<div class="product-item col-md-3 col-sm-6 col-xs-12">
						<a href="#"><img src="{{asset('../storage/app/avatar/'.$search->prod_img)}}" class="img-thumbnail"></a>
						<p><a href="#">{{$search->prod_name}}</a></p>
						<p class="price">{{number_format($search->prod_price,0,',','.')}}</p>	  
						<div class="marsk">
							<a href="{{asset('detail/'.$search->prod_id.'/'.$search->prod_slug.'.html')}}">Xem chi tiết</a>
						</div>                                    
					</div>
				@endforeach	
			</div>                	                	
		</div>
	</div>	
@endsection
					
