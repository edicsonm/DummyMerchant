<%@ include file="/WEB-INF/views/include.jsp"%>
<header role="banner" class="navbar navbar-inverse navbar-fixed-top bs-docs-nav">
	<div class="container">
		
		<!-- <nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="#">WebSiteName</a>
		    </div>
		    <div>
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="#">Home</a></li>
		        <li><a href="http://www.google.com">Page 1</a></li>
		        <li><a href="#">Page 2</a></li>
		        <li><a href="#">Page 3</a></li>
		      </ul>
		    </div>
		  </div>
		</nav> -->
	
		<div class="navbar-header">
			<button data-target=".bs-navbar-collapse" data-toggle="collapse"
				type="button" class="navbar-toggle">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><spring:message code="label.title.paymentPage" /></a>
		</div>
		
		<nav role="navigation" class="collapse navbar-collapse bs-navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="http://www.billingbuddy.com"><spring:message code="label.title.gotobillingbuddy" /></a></li>
				<c:choose> 
				  <c:when test="${userAutenticated != null}">
				  	<%-- Dear <strong>${userAutenticated}</strong>, Welcome to BillingBuddy. --%>
				    <li><a href="<c:url value="/logout" />"><spring:message code="label.logout" /></a></li>
				  </c:when>
				  <c:otherwise>
				    
				  </c:otherwise>
				</c:choose>
				
			</ul>
		</nav>
		
	</div>
</header>

<div id="content" class="bs-header">
	<div class="container">
		<!-- <h1>Validator</h1> -->
		<p>A simple and user-friendly way to test transacctions</p>
	</div>
</div>