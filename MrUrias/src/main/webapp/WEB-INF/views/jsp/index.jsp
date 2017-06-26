<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<jsp:include page="fragments/header.jsp" />

			<div class="slide">
				  <img class="mySlides" src="resources/core/img/imagem1.png" style="width:100%">
				  <img class="mySlides" src="resources/core/img/imagem2.png" style="width:100%">
				  <img class="mySlides" src="resources/core/img/imagem3.png" style="width:100%">
				  <img class="mySlides" src="resources/core/img/imagem4.png" style="width:100%">

				  <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
				  <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
				</div>

				<script>
				var slideIndex = 1;
				showDivs(slideIndex);

				function plusDivs(n) {
				  showDivs(slideIndex += n);
				}

				function showDivs(n) {
				  var i;
				  var x = document.getElementsByClassName("mySlides");
				  if (n > x.length) {slideIndex = 1}
				  if (n < 1) {slideIndex = x.length}
				  for (i = 0; i < x.length; i++) {
				     x[i].style.display = "none";
				  }
				  x[slideIndex-1].style.display = "block";
				}
				var slideIndex = 0;
				carousel();

				function carousel() {
				    var i;
				    var x = document.getElementsByClassName("mySlides");
				    for (i = 0; i < x.length; i++) {
				       x[i].style.display = "none";
				    }
				    slideIndex++;
				    if (slideIndex > x.length) {slideIndex = 1}
				    x[slideIndex-1].style.display = "block";
				    setTimeout(carousel, 2000);
				}
				</script>
				<div class="cartoes">
					<img src="resources/core/img/cartoes.png">
				</div>

					<div id="ofertas" class="container">

						<div class="row text-center">

							<h1><img src="resources/core/img/produtos/icon1.jpg">Ofertas Da Semana</h1>
							<hr>
						</div>

								<div class="row ofertas">
									<div class="col-md-2">
										<h2><a href="#">Celulares e Telefones</a></h2>
									</div>
                                                                    <br />
									<div class="col-md-2">
										<img src="resources/core/img/produtos/lgk10oferta.jpg" alt="produto">
									</div>
									<div class="col-md-2">
										<img src="resources/core/img/produtos/sansumgoferta.jpg" alt="produto">
									</div>
									<div class="col-md-2">
										<img src="resources/core/img/produtos/motog5oferta.jpg" alt="produto">
									</div>
									<div class="col-md-2">
										<img src="resources/core/img/produtos/xaiomioferta.jpg" alt="produto">
									</div>
                                                                        <div class="col-md-2">
                                                                                <img src="resources/core/img/produtos/xaiomioferta.jpg" alt="produto">
                                                                            </div>

								</div>

                                                                        <div class="row ofertas2">
									<div class="col-md-2">
                                                                            <h3>Anúncios visados <br/> <br/><img src="resources/core/img/produtos/visado.jpg" alt="visado"></h3>
                                                                            <h3><img src="img/produtos/icon2.jpg">Lojas oficiais
                                                                                <br/> <br/><img src="resources/core/img/produtos/loja1.jpg">
                                                                                           <img src="resources/core/img/produtos/loja2.jpg">

                                                                            </h3>

									</div>
                                                                    <br />
									<div class="col-md-2">
										<img src="resources/core/img/produtos/lgk10oferta.jpg" alt="produto">
									</div>
									<div class="col-md-2">
										<img src="resources/core/img/produtos/sansumgoferta.jpg" alt="produto">
									</div>
									<div class="col-md-2">
										<img src="resources/core/img/produtos/motog5oferta.jpg" alt="produto">
									</div>
									<div class="col-md-2">
										<img src="resources/core/img/produtos/xaiomioferta.jpg" alt="produto">
									</div>
                                                                        <div class="col-md-2">
                                                                                <img src="resources/core/img/produtos/xaiomioferta.jpg" alt="produto">
                                                                            </div>
					</div>

		</header>
                <jsp:include page="fragments/footer.jsp" />
		<script src="resources/core/lib/jquery/jquery.min.js"></script>
		<script src="resources/core/lib/bootstrap/js/bootstrap.min.js"></script>

	</body>
</html>
