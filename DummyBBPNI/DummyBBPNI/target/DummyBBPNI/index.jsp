<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map.Entry" %>
<%@ page import="java.util.Enumeration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<body>
<%-- <%
	Enumeration<String> paramNames = request.getParameterNames();
	while(paramNames.hasMoreElements()) {
	    String paramName = paramNames.nextElement();
	    System.out.println("paramName:"+paramName);
	}
%> --%>

<form id="formResult" action="http://localsales.edimoto.com/result" method="post">
	<input type="hidden" name="TransID" value="TransID45">
	<input type="hidden" name="TransRef" value="TransRef58">
	<input type="hidden" name="Amount" value="Amount85">
	<input type="hidden" name="Currency" value="Currency66">
	<input type="hidden" name="Status" value="Status85">
	<input type="hidden" name="Message" value="Message93">	
	<input type="hidden" name="Email" value="Email63">
	<input type="hidden" name="Key" value="Key52">
	<input type="hidden" name="Test" value="Test23">
	<input type="hidden" name="RebillId" value="RebillId72">
	<!-- <input type="hidden" name="Fail" value="Fail17">	 -->
	<input type="submit" name="Sent Result">
</form>
<form action="http://localsales.edimoto.com/success" method="post">
	<input type="submit" value="Sent Success">
</form>
<form action="http://localsales.edimoto.com/failure" method="post">
	<input type="submit"" value="Sent Failure">
</form>
</body>
</html>
