<?php require_once "./mvc/views/client/include/head.php"; ?>
<body>
    <header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-envelope"></i> babyboo@gmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
                                <li><a href="https://www.facebook.com/?locale=vi_VN"><i class="fab fa-facebook"></i></a></li>
								<li><a href="https://www.youtube.com/"><i class="fab fa-youtube"></i></a></li>
								<li><a href="https://www.instagram.com/"><i class="fab fa-instagram-square"></i></a></li>    

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-md-2 clearfix">
						<div class="logo pull-left">
							<a href="<?=base?>"><img src="public/images/logo/logo.png" alt="" /></a>
						</div>
					</div>
					<div class="col-md-4 clearfix mob-ipa">
						<div class="shop-menu clearfix pull-left">
							<div class="mainmenu pull-left">
								<ul class="nav navbar-nav collapse navbar-collapse">
									<li><a href="">Trang Chủ</a></li>
									<li><a href="<?=base?>contact/contact">Giới Thiệu - Liên Hệ</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 clearfix mob-ipa">
						<div class="shop-menu clearfix pull-right">
						<ul class="nav navbar-nav collapse navbar-collapse" style="position: relative;">
							<?php if(isset($_SESSION["info"]["name"])){?>
								<li class="dropdown menu-info">
									<a class="text-info" href="javascrip:void(0)"> <?php echo '<i class="fa fa-user"></i>Xin chào '.$_SESSION['info']["name"].'<i class="fa fa-angle-down"></i>'; ?></a>
									<ul class="info-user">
											<li><a href="<?=base?>infouser/index">Thông tin cá nhân</a></li>
											<li><a href="<?=base?>home/history">Lịch sử mua hàng</a></li>
									</ul>
								</li>
							<?php }?>
								<li><a href="<?=base?>cart/showcart"><i class="fa fa-shopping-cart"></i> Giỏ Hàng</a></li>
								<li><?php if(isset($_SESSION["info"]["name"])) echo '<a href="logout/logout"><i class="fas fa-sign-out-alt"></i>Đăng Xuất</a>'; else echo '<a href="login/login"><i class="fa fa-lock"></i>Đăng Nhập</a>'; ?></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
		<div id="contact-page" class="container" class="introduce">
		<div style="padding: unset;" class="form-group col-md-12">
			<a href="<?=base?>" name="submit" class="btn btn-primary pull-left">Trở Về</a>
		</div>
             <h3 style="color: #1ea89c;">Giới Thiệu</h3>
			 <p style="text-align:justify">
			 Babyboo.vn là shop online chuyên cung cấp các sản phẩm chính hãng dành cho trẻ em được nhập khẩu từ Mỹ, Nhật với website chính thức là: babyboo.vn. Ghé qua babyboo.vn, bạn sẽ có thể thỏa sức thăm quan và lựa chọn cho bé yêu của mình rất nhiều chủng loại sản phẩm như: đồ sơ sinh (bình sữa, túi chứa sữa, bỉm...), đồ dùng, đồ chơi cao cấp (bóng tập bò, thảm nằm chơi, xe tập đi, các loại đồ chơi giáo dục...), đồ dùng cho mẹ, đồ thời trang cho bé (quần áo, giày dép, phụ kiện)... Sản phẩm của chúng tôi rất đa dạng và hướng đến đối tượng trẻ em ở nhiều độ tuổi: trẻ sơ sinh, bé từ 1 đến 3 tuổi và lớn hơn nữa.
			</p>
			<p style="text-align:justify">
			Babyboo.vn cam kết các sản phẩm hoàn toàn nhập khẩu từ Mỹ với hóa đơn bán hàng đầy đủ. Nhóm thành lập nên website này đều là những ông bố, bà mẹ do đó hơn ai hết chúng tôi hiểu rõ tâm lý của bạn khi mua sắm đó là mong muốn lựa chọn cho con yêu của mình những sản phẩm tốt và an toàn nhất. Vì vậy, chúng tôi hướng đến cung cấp những mặt hàng vừa phù hợp tâm lý lại đảm bảo an toàn sức khỏe cho trẻ.
			</p>
			<p style="text-align:justify">
			Babyboo.vn nói KHÔNG với các mặt hàng không rõ nguồn gốc hoặc xuất xứ từ Trung Quốc. Bạn có thể thấy ngay điều này ở những sản phẩm chính hãng của các thương hiệu nổi tiếng thế giới tại Babyboo như: Dr.Brown, Born Free, Playtext, Avent, Comotomo, Play-doh, Fisher Price, Vtech, Smart Trike, Infatino...Chúng tôi cam kết 100% những sản phẩm bình sữa tại Babyboo.vn đều được sản xuất từ loại nhựa cao cấp không chứa hóa chất công nghiệp Bisphenol A (BPA) độc hại. Các loại đồ chơi babyboo.vn cung cấp đều là đồ chơi giáo dục có tác dụng vừa giải trí lại kích thích tư duy cũng như sự sáng tạo của bé. Hơn thế nữa, những đồ chơi này đều được làm từ các nguyên liệu tự nhiên, tuyệt đối an toàn như: đất nặn làm từ bột lúa mỳ Play-doh...
			</p style="text-align:justify">
			<p>
			Ngoài hệ thống sản phẩm đa dạng, các chức năng như giỏ hàng, tìm kiếm hay các chính sách về giao hàng, thanh toán của babyboo.vn đều rất rõ ràng, thuận tiện và hướng đến mang lại nhiều lợi ích cho khách hàng. Dịch vụ giao hàng của babyboo.vn nhanh chóng, đúng hẹn. Bạn sẽ được hoàn toàn MIỄN PHÍ vận chuyển nếu mua hàng có giá trị thanh toán từ 800.000đ trở lên (đối với khách hàng ở Hà Nội). Hệ thống thanh toán trực tuyến của Babyboo.vn được chứng nhận an toàn giao dịch cũng như bảo mật thông tin bởi 2 cổng thanh toán uy tín nhất Việt Nam hiện nay là Bảo Kim và Ngân Lượng. Bạn có thể lựa chọn thanh toán sản phẩm tại babyboo.vn bằng ví điện tử hoặc internet banking của 15 ngân hàng nội địa qua các cổng thanh toán này một cách dễ dàng. Ngoài ra, các khách hàng tại khu vực Hà Nội có thể sử dụng dịch vụ giao hàng và thu tiền tại nhà.
			</p>
			<p style="text-align:justify">
			Phần lớn khách hàng yêu thích các sản phẩm của babyboo.vn không chỉ bởi sản phẩm chất lượng mà còn do giá cả hợp lý và các chương trình khuyến mại, ưu đãi diễn ra thường xuyên. Chúng tôi luôn có những đợt tặng quà và giảm giá hấp dẫn lên tới 70% dành cho khách hàng, đảm bảo bạn sẽ không thể không bị lôi kéo! Bên cạnh đó, babyboo.vn có dịch vụ hỗ trợ khách hàng chu đáo sau khi mua. Khi có bất kỳ thắc mắc nào liên quan đến sản phẩm, hãy gọi tới các số hotline hiển thị trên website, chúng tôi sẽ giải đáp cũng như tư vấn tận tình.
			</p>
			<p style="text-align:justify">
			Chúng tôi luôn mong muốn hướng đến mục tiêu: Khi bạn mua sắm tại babyboo.vn, bạn sẽ có thể dẹp bỏ mọi lo lắng về chất lượng sản phẩm, dịch vụ sang một bên để tự tin lựa chọn cho thiên thần bé bỏng của mình những sản phẩm tốt và ưng ý nhất! Còn chờ đợi gì nữa, hãy truy cập babyboo.vn để khám phá và chứng thực những gì chúng tôi đã cam kết ngay bây giờ!
			</p>
		</div>
    <div id="contact-page" class="container">
        <h3 style="color: #1ea89c;">HỖ TRỢ TRỰC TUYẾN</h3>
    	<div class="bg">  	   
    		<div class="row" style="margin-top: 30px;">  	
	    		<div class="col-sm-8">
	    			<div class="contact-form">
	    				<h2 class="title text-center">Liên Hệ Với Chúng Tôi</h2>
						    <div class="imghotline">
								<img src="public/images/logo/Hotline.png" alt="">
							</div>
							<div class="social">
							<div>
                            	<a class="online" style='background:url(public/images/logo/messenger.png) no-repeat center left; padding:2px 0 2px 20px;font-size:14px;' href="http://m.me/ShopBabyboo">Chat Facebook</a>
                    			<div class="clr"></div>
							</div>
							<div style='margin: 5px 0;'>
                            	<a class="online" style='background:url(public/images/logo/zalo.png) no-repeat center left; padding:2px 0 2px 20px;font-size:14px;' href="https://zalo.me/g/ojzaxr656">Chat Zalo</a>
                    			<div class="clr"></div>
							</div>
							<div>
                            	<a class="online" style='background:url(public/images/logo/skype.png) no-repeat center left; padding:2px 0 2px 20px;font-size:14px;' href="skype:babyboo?chat">Chat Skype</a>
                    			<div class="clr"></div>
							</div>
							</div>
	    				    
	    			</div>
	    		</div>
	    		<div class="col-sm-8">
	    			<div class="contact-info">
	    				<h2 class="title text-center">Thông Tin Liên Hệ</h2>
	    				<address>
	    					<p>BABYBOO</p>
							<p>Ngõ 218, Lĩnh Nam, Hà Nội</p>
							<p>Số Điện thoại: 0989714733</p>
							<p>Email: babyboo@gmail.com</p>
	    				</address>
	    			</div>
    			</div>    			
	    	</div>  
    	</div>	
    </div>
</body>
    <?php require_once "./mvc/views/client/include/footer.php"; ?>