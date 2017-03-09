<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- styles -->
<link href="resources/css/styles.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="template/header.jsp" />

	<div class="page-content">
		<div class="row">
			<div class="col-md-2">
				<jsp:include page="template/sidebar.jsp" />
			</div>
			<div class="col-md-10">
				<div class="row">
				<h1>Your contacts</h1>
				</div>

				<div class="row">
					<div class="col-md-12 panel-warning">
						<div class="content-box-header panel-heading">
							<div class="panel-title ">
							</div>
						</div>
						<div class="content-box-large box-with-header">
							<table border="1" width="100%" cellpadding="4" cellpacing="3">
								<th>Name</th>
								<th>Surname</th>
								<th>Middlename</th>
								<th>Mobile</th>
								<th>Home</th>
								<th>Work</th>
								<th>Address</th>
								<th></th>
								<th></th>
								<c:forEach items="${contacts}" var="contact">
									<tr align="center">
										<td>${contact.name}</td>
										<td>${contact.surname}</td>
										<td>${contact.middlename}</td>
										<td>${contact.mobilephone }</td>
										<td>${contact.homephone }</td>
										<td>${contact.workphone }</td>
										<td>${contact.address}</td>
										<td><a
											href="/edit?contactId=${contact.contactId}">Edit</a></td>
										<td><a
											href="/delete?contactId=${contact.contactId}">Delete</a></td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="template/footer.jsp" />
</body>
</html>