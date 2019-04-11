<%@page import="dao.GioHangDAO"%>
<%@page import="model.SanPham"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="span12">
			<h4 class="title">
				<span class="pull-left"><span class="text"><span
						class="line">Feature <strong>Products</strong></span></span></span> <span
					class="pull-right"> <a class="left button"
					href="#myCarousel" data-slide="prev"></a><a class="right button"
					href="#myCarousel" data-slide="next"></a>
				</span>
			</h4>
			
			<div id="myCarousel" class="myCarousel carousel slide">
			
				<div class="carousel-inner">
					<div class="active item">
						<ul class="thumbnails">
						<%
				ArrayList<SanPham> dsSanPham = new GioHangDAO().getDsSanPham();
			%>
			<%
				for (int i = 0; i < dsSanPham.size(); i++) {
			%>
							<li class="span3">
								<div class="product-box">
									<span class="sale_tag"></span>
									<p>
										<a href="XuLyMuaSanPham?maSanPham=<%=dsSanPham.get(i).getMaSanPham()%>"><img
											src="<%=dsSanPham.get(i).getHinhAnh()%>" alt=""/></a>
									</p>
									<a href="product_detail.html" class="title"><%=dsSanPham.get(i).getTenSanPham()%></a><br />

									<p class="price"><%=dsSanPham.get(i).getGiaSanPham()%></p>
								</div>
							</li>
							<%
						}
					%>
						</ul>
					</div>
					
					<div class="item">
						<ul class="thumbnails">
							<li class="span3">
								<div class="product-box">
									<p>
										<a href="product_detail.html"><img
											src="themes/images/ladies/5.jpg" alt="" /></a>
									</p>
									<a href="product_detail.html" class="title">Know exactly</a><br />
									<a href="products.html" class="category">Quis nostrud</a>
									<p class="price">$22.30</p>
								</div>
							</li>
							<li class="span3">
								<div class="product-box">
									<p>
										<a href="product_detail.html"><img
											src="themes/images/ladies/6.jpg" alt="" /></a>
									</p>
									<a href="product_detail.html" class="title">Ut wisi enim ad</a><br />
									<a href="products.html" class="category">Commodo consequat</a>
									<p class="price">$40.25</p>
								</div>
							</li>
							<li class="span3">
								<div class="product-box">
									<p>
										<a href="product_detail.html"><img
											src="themes/images/ladies/7.jpg" alt="" /></a>
									</p>
									<a href="product_detail.html" class="title">You think water</a><br />
									<a href="products.html" class="category">World once</a>
									<p class="price">$10.45</p>
								</div>
							</li>
							<li class="span3">
								<div class="product-box">
									<p>
										<a href="product_detail.html"><img
											src="themes/images/ladies/8.jpg" alt="" /></a>
									</p>
									<a href="product_detail.html" class="title">Quis nostrud
										exerci</a><br /> <a href="products.html" class="category">Quis
										nostrud</a>
									<p class="price">$35.50</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>