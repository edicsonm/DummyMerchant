<%@ include file="/WEB-INF/views/include.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><fmt:message key="label.title.success" /></title>
<%@ include file="/WEB-INF/views/includeStyles.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp"%>
	
	<div class="container bs-docs-container">
		<div class="row">
			<div class="col-md-12" role="main">
				<div class="jumbotron">
					<h1><fmt:message key="label.success" /></h1>
					<p><fmt:message key="label.message.success" /></p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="form-actions floatRight">
					<a href="<c:url value='/fillPayment' />">Go to init</a>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>
