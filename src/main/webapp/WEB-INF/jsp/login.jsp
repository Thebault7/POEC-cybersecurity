<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Page de login Acme</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/login.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/errorMessage.css">
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form:form class="login100-form validate-form"
					action="checkLogin" method="POST" modelAttribute="Employee">
					<span class="login100-form-title p-b-20"> Bienvenue </span>
					<span class="login100-form-title p-b-30"> <img
						src="<%=request.getContextPath()%>/img/Logo_BuFaLo.png" />
					</span>
					
					<div class="errorMessage">
						<p>${errorMessage}</p>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Valid email is: a@b.c">
						<form:input class="input100" id="email-input" type="text"
							path="reference" onfocusout="verifyIfEmpty('email')" />
						<span class="focus-input100" id="email-text"
							data-placeholder="Identifiant"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Enter password">
						<span class="btn-show-pass"> </span>
						<form:input class="input100" id="password-input" type="password"
							path="password" onfocusout="verifyIfEmpty('password')" />
						<span class="focus-input100" id="password-text"
							data-placeholder="Password"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" type="submit">Login</button>
						</div>
					</div>

	 				<div class="text-center p-t-100">
						<span class="txt1"> Mot de passe oublié ? </span> <a class="txt2"
							href="#"> Cliquer ici </a>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/login.js"></script>
</body>
</html>