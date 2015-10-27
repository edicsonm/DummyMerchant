<%@ include file="/WEB-INF/views/include.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><fmt:message key="label.title.paymentPage" /></title>
<%@ include file="/WEB-INF/views/includeStyles.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp"%>
	
	<div class="container bs-docs-container">
		<form:form method="POST" action="https://sales.billingbuddy.com/hosted/index/payment">
		<%-- <form:form method="POST" action="http://localhost/DummyBBPNI/"> --%>
			<div class="row">
				<div class="col-md-6" role="main">
					<div class="bs-example">
						<span class="title-section"><spring:message code="label.transactionDetails"/></span>
						<div class="form-group">
							<input type="hidden" name="Merchant" value="${payment.merchant}" />
							<label class="control-lable"><spring:message code="label.merchant"/></label>
							<span class="help-block">${payment.merchant}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="Site" value="${payment.site}" />
							<label class="control-lable"><spring:message code="label.site"/></label>
							<span class="help-block">${payment.site}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="Schedule" value="${payment.schedule}" />
							<label class="control-lable"><spring:message code="label.schedule"/></label>
							<span class="help-block">${payment.schedule}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="Amount" value="${payment.amount}" />
							<label class="control-lable"><spring:message code="label.amount"/></label>
							<span class="help-block">${payment.amount}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="Currency" value="${payment.currency}" />
							<label class="control-lable"><spring:message code="label.currency"/></label>
							<span class="help-block">${payment.currency}</span>
						</div>
					
						<div class="form-group">
							<input type="hidden" name="TransRef" value="${payment.transactionReference}" />
							<label class="control-lable"><spring:message code="label.transactionReference"/></label>
							<span class="help-block">${payment.transactionReference}</span>
						</div>
					
						<div class="form-group">
							<input type="hidden" name="Product" value="${payment.product}" />
							<label class="control-lable"><spring:message code="label.product"/></label>
							<span class="help-block">${payment.product}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="PaymentType" value="${payment.paymentType}" />
							<label class="control-lable"><spring:message code="label.paymentType"/></label>
							<span class="help-block">${payment.paymentType}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="AttemptMode" value="${payment.attemptMode}" />
							<label class="control-lable"><spring:message code="label.attemptMode"/></label>
							<span class="help-block">${payment.attemptMode}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="TestTrans" value="${payment.testTrans}" />
							<label class="control-lable"><spring:message code="label.testTrans"/></label>
							<span class="help-block">${payment.testTrans}</span>
						</div>
						
					</div>
				</div>
				<div class="col-md-6" role="main">
					<div class="bs-example">
						<span class="title-section"><spring:message code="label.transactionDetails"/></span>
						<div class="form-group">
							<input type="hidden" name="customer[email]" value="${payment.customer.email}" />
							<label class="control-lable"><spring:message code="label.email"/></label>
							<span class="help-block">${payment.customer.email}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="customer[first_name]" value="${payment.customer.firstName}" />
							<label class="control-lable"><spring:message code="label.firstName"/></label>
							<span class="help-block">${payment.customer.firstName}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="customer[last_name]" value="${payment.customer.lastName}" />
							<label class="control-lable"><spring:message code="label.lastName"/></label>
							<span class="help-block">${payment.customer.lastName}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="customer[dob]" value="${payment.customer.dayOfBirth}" />
							<label class="control-lable"><spring:message code="label.dayOfBirth"/></label>
							<span class="help-block">${payment.customer.dayOfBirth}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="customer[address1]" value="${payment.customer.address1}" />
							<label class="control-lable"><spring:message code="label.address1"/></label>
							<span class="help-block">${payment.customer.address1}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="customer[address2]" value="${payment.customer.address2}" />
							<label class="control-lable"><spring:message code="label.address2"/></label>
							<span class="help-block">${payment.customer.address2}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="customer[city]" value="${payment.customer.city}" />
							<label class="control-lable"><spring:message code="label.city"/></label>
							<span class="help-block">${payment.customer.city}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="customer[state]" value="${payment.customer.state}" />
							<label class="control-lable"><spring:message code="label.state"/></label>
							<span class="help-block">${payment.customer.state}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="customer[postcode]" value="${payment.customer.postCode}" />
							<label class="control-lable"><spring:message code="label.postCode"/></label>
							<span class="help-block">${payment.customer.postCode}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="customer[country]" value="${payment.customer.country}" />
							<label class="control-lable"><spring:message code="label.country"/></label>
							<span class="help-block">${payment.customer.country}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="customer[phone]" value="${payment.customer.phone}" />
							<label class="control-lable"><spring:message code="label.phone"/></label>
							<span class="help-block">${payment.customer.phone}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="customer[fax]" value="${payment.customer.fax}" />
							<label class="control-lable"><spring:message code="label.fax"/></label>
							<span class="help-block">${payment.customer.fax}</span>
						</div>
						
						<div class="form-group">
							<input type="hidden" name="customer[mobile]" value="${payment.customer.mobile}" />
							<label class="control-lable"><spring:message code="label.mobile"/></label>
							<span class="help-block">${payment.customer.mobile}</span>
						</div>
						
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12">
						<div class="form-actions floatRight">
							<input type="submit" value="Pay" class="btn btn-primary btn-sm" /> or <a href="<c:url value='/fillPayment' />">Cancel</a>
						</div>
					</div>
				</div>
				
			</div>
		</form:form>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>