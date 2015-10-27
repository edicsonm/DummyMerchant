<%-- <%@ include file="/WEB-INF/views/include.jsp"%> --%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%-- <%@ include file="/WEB-INF/views/includeStyles.jsp"%> --%>

<!-- Bootstrap CSS v3.0.0 or higher -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">

<!-- FormValidation CSS file -->
<link rel="stylesheet" href="/vendor/formvalidation/dist/css/formValidation.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">

<!-- jQuery v1.9.1 or higher -->
<script type="text/javascript" src="/vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap JS -->
<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- FormValidation plugin and the class supports validating Bootstrap form -->
<script src="/vendor/formvalidation/dist/js/formValidation.min.js"></script>
<script src="/vendor/formvalidation/dist/js/framework/bootstrap.min.js"></script>

<script>
$(document).ready(function() {
    $('#userForm').formValidation({
        framework: 'bootstrap',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            user: {
                validators: {
                    notEmpty: {
                        message: 'The user name is required'
                    }
                }
            }
        }
    });
});
</script>
</head>
<body>
	<form id="userForm" action="http://localhost/DummyBBPNI/" class="form-horizontal" method="post" >
	  <div class="form-group">
	    <label for="inputName" class="control-label">Name</label>
	    <input type="text" class="form-control" id="user" placeholder="Cina Saffary">
	  </div>
	  <div class="form-group">
	    <button type="submit" class="btn btn-primary">Submit</button>
	  </div>
	</form>
</body>
</html>