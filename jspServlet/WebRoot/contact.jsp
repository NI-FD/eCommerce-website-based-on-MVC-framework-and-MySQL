<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="jspservlet.dao.impl.ProductDAOImpl"%>
<%@ page import="jspservlet.vo.Product"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Splash &mdash; Free Website Template, Free HTML5 Template by FreeHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />
	 <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="MainWeb/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="MainWeb/css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="MainWeb/css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="MainWeb/css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="MainWeb/css/owl.carousel.min.css">
	<link rel="stylesheet" href="MainWeb/css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="MainWeb/css/style.css">

	<!-- Modernizr JS -->
	<script src="MainWeb/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="MainWeb/js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">

	
	<div class="page-inner">
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="index.jsp">I-CAR <em>.</em></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					<ul>
						<li><a href="features.jsp">About</a></li>
						<li><a href="product.jsp">Product</a></li>
						<li><a href="contact.jsp">Contact</a></li>
						<%  
                            String IN = (String)session.getAttribute("IN");
							if(!IN.equals("1"))
							{
						%>
							<li class="has-dropdown">
							<a href="#">User</a>
							<ul class="dropdown">			
								<li ><a href="login.jsp">Login in</a></li>	    
							</ul>
						</li>
						<% 
							}
							else
							{
						%>		
						<li class="has-dropdown">
							<a href="#">User</a>
							<ul class="dropdown">			
								<li><a href="cart.jsp">Cart</a></li>
								<li><a href="information.jsp">Information</a></li>
								<li><a href="welcome.jsp">Login out</a></li>		    
							</ul>
						</li>
						<%
						    }
						 %>
					  <!--<li class="btn-cta"><a href="index.html"><span>Login</span></a></li>-->
					</ul>
				</div>
			</div>
			
		</div>
	</nav>
	
	<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(MainWeb/images/3.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					<div class="row row-mt-15em">

						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<span class="intro-text-small">If you are interested in any of our products or would like to discuss a custom order, please feel free to contact us. We are looking forward to forming successful business relationships with new clients around the world in the near future.</span>
							<h1>Get In Touch</h1>	
						</div>
						
					</div>
					
				</div>
			</div>
		</div>
	</header>
	
	
	<div class="gtco-section border-bottom">
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-6 animate-box">
					<h3>Get In Touch</h3>
					<form action="feedback" method="post">
						<div class="row form-group">
							<div class="col-md-12">
								<label class="sr-only" for="name">Name</label>
								<input type="text" id="name" name="name" class="form-control" placeholder="Your firstname">
							</div>
							
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<label class="sr-only" for="email">Email</label>
								<input type="text" id="email" name="email" class="form-control" placeholder="Your email address">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<label class="sr-only" for="subject">Subject</label>
								<input type="text" id="subject" name="subject" class="form-control" placeholder="Your subject of this message">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<label class="sr-only" for="message">Message</label>
								<textarea name="message" id="message" name="message" cols="30" rows="10" class="form-control" placeholder="Write us something"></textarea>
							</div>
						</div>
						<div class="form-group">
							<input type="submit" value="Send Message" class="btn btn-primary">
						</div>

					</form>		
				</div>
				<div class="col-md-5 col-md-push-1 animate-box">
					
					<div class="gtco-contact-info">
						<h3>Contact Information</h3>
						<ul>
							<li class="address">Beijing University of Posts and Telecommunications, <br>Beijing City, Xitucheng Road No. 10</li>
							<li class="phone"><a href="#">1235 2355 98</a></li>
							<li class="email"><a href="#">info@bupt.com</a></li>
							<li class="url"><a href="http://www.bupt.edu.cn">http://www.bupt.edu.cn</a></li>
						</ul>
					</div>


				</div>
				</div>
			</div>
		</div>
	</div>

	<footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">
			<div class="row row-p	b-md">

				<div class="col-md-4">
					<div class="gtco-widget">
						<h3>About <span class="footer-logo">Splash<span>.<span></span></h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eos molestias quod sint ipsum possimus temporibus officia iste perspiciatis consectetur in fugiat repudiandae cum. Totam cupiditate nostrum ut neque ab?</p>
					</div>
				</div>

				<div class="col-md-4 col-md-push-1">
					<div class="gtco-widget">
						<h3>Links</h3>
						<ul class="gtco-footer-links">
							<li><a href="#">Knowledge Base</a></li>
							<li><a href="#">Career</a></li>
							<li><a href="#">Press</a></li>
							<li><a href="#">Terms of services</a></li>
							<li><a href="#">Privacy Policy</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-4">
					<div class="gtco-widget">
						<h3>Get In Touch</h3>
						<ul class="gtco-quick-contact">
							<li><a href="#"><i class="icon-phone"></i> +1 234 567 890</a></li>
							<li><a href="#"><i class="icon-mail2"></i> info@FreeHTML5.co</a></li>
							<li><a href="#"><i class="icon-chat"></i> Live Chat</a></li>
						</ul>
					</div>
				</div>

			</div>

			<div class="row copyright">
				<div class="col-md-12">
					<p class="pull-left">
						<small class="block">&copy; 2016 Free HTML5. All Rights Reserved.</small> 
						<small class="block">Designed by <a href="http://FreeHTML5.co/" target="_blank">FreeHTML5.co</a> Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a></small>
					</p>
					<p class="pull-right">
						<ul class="gtco-social-icons pull-right">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</p>
				</div>
			</div>

		</div>
	</footer>
	</div>

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="MainWeb/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="MainWeb/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="MainWeb/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="MainWeb/js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="MainWeb/js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="MainWeb/js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="MainWeb/js/jquery.magnific-popup.min.js"></script>
	<script src="MainWeb/js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="MainWeb/js/main.js"></script>

	</body>
</html>
