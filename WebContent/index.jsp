<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!-- bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="themes/css/bootstrappage.css" rel="stylesheet" />
<!-- global styles -->
<link href="themes/css/flexslider.css" rel="stylesheet" />
<link href="themes/css/main.css" rel="stylesheet" />
<!-- scripts -->
<script src="themes/js/jquery-1.7.2.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="themes/js/superfish.js"></script>
<script src="themes/js/jquery.scrolltotop.js"></script>

<script src="themes/js/common.js"></script>
<script src="themes/js/jquery.flexslider-min.js"></script>
<script type="text/javascript">
			$(function() {
				$(document).ready(function() {
					$('.flexslider').flexslider({
						animation: "fade",
						slideshowSpeed: 4000,
						animationSpeed: 600,
						controlNav: false,
						directionNav: true,
						controlsContainer: ".flex-container" // the container that holds the flexslider
					});
				});
			});
		</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="wrapper" class="container">
		<jsp:include page="slider.jsp"></jsp:include>
		<jsp:include page="slider/homepage.jsp"></jsp:include>
		<jsp:include page="slider/headertext.jsp"></jsp:include>
		
		<jsp:include page="adventisement.jsp"></jsp:include>
		<jsp:include page="footer.jsp"></jsp:include>



	</div>
</body>
</html>