<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<c:url var="R" value="/" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>User Index</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Bootstrap core CSS -->
<link href="${R}res/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="${R}res/font-awesome/font-awesome.min.css" rel="stylesheet">
<link href="${R}res/devicons/devicons.min.css" rel="stylesheet">
<link href="${R}res/icons/simple-line-icons.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${R}res/css/resume.min.css" rel="stylesheet">

</head>

<body id="page-top">
	<!-- 메뉴바 -->
	<tiles:insertAttribute name="menu" />

	<div class="container-fluid p-0">

		<section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
			<div class="my-auto">
				<h1 class="mb-0">
					<span class="fa fa-book"> </span>SW <span class="text-primary">Mentoring</span>
				</h1>
				<p class="mb-5">'소프트웨어공학과 멘토링'으로 성공회대 소프트웨어공학과 내에서 선후배 간의 지식 공유가
					이루어지는 것을 말한다.</p>
			</div>
		</section>

		<section class="resume-section p-3 p-lg-5 d-flex flex-column"
			id="experience">
			<div class="my-auto">
				<h2 class="mb-5">About SM</h2>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">
							<span class="fa fa-pencil"></span> 멘토 자격
						</h3>
						<hr />
						<p>${fn:replace(manage_main.contents1, newLineChar, "<br/>")}</p>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">
							<span class="fa fa-pencil"></span> 팀 선별 및 필수 요건
						</h3>
						<hr />
						<p>${fn:replace(manage_main.contents2, newLineChar, "<br/>")}</p>
					</div>
				</div>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">
							<span class="fa fa-krw"></span> 장학금
						</h3>
						<hr />
						<p>${fn:replace(manage_main.contents3, newLineChar, "<br/>")}</p>
					</div>
				</div>

				<!--
				<div class="resume-item d-flex flex-column flex-md-row">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">Web Design Intern</h3>
						<div class="subheading mb-3">Shout! Media Productions</div>
						<p>Collaboratively administrate empowered markets via
							plug-and-play networks. Dynamically procrastinate B2C users after
							installed base benefits. Dramatically visualize customer directed
							convergence without revolutionary ROI.</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">September 2008 - June 2010</span>
					</div>
				</div>
				-->
			</div>

		</section>

		<section class="resume-section p-3 p-lg-5 d-flex flex-column"
			id="education">
			<div class="my-auto">
				<h2 class="mb-5">사업 일정</h2>

				<div class="resume-item d-flex flex-column flex-md-row mb-5">
					<div class="resume-content mr-auto">
						<div class="subheading mb-3">${fn:replace(manage_main.contents4, newLineChar, "<br/>")}</div>
					</div>
				</div>

				<!--
				<div class="resume-item d-flex flex-column flex-md-row">
					<div class="resume-content mr-auto">
						<h3 class="mb-0">James Buchanan High School</h3>
						<div class="subheading mb-3">Technology Magnet Program</div>
						<p>GPA: 3.56</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">August 2002 - May 2006</span>
					</div>
				</div>
				-->
			</div>
		</section>

		<!-- admin main modal -->
		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<div class="modal" id="adminModal" tabindex="-1" role="dialog"
				aria-labelledby="adminModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h3 class="modal-title" id="adminModalLabel">SM 사업 안내 수정</h3>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<form:form method="post" modelAttribute="manage_main">
							<div class="modal-body">

								<p style="font-size: 20px;">멘토 기준</p>
								<form:textarea path="contents1" name="contents1"
									class="form-control" rows="10" id="comment"></form:textarea>
								<br />
								<p style="font-size: 20px;">팀 선별 및 필수 요건</p>
								<form:textarea path="contents2" name="contents2"
									class="form-control" rows="10" id="comment"></form:textarea>
								<br />
								<p style="font-size: 20px;">장학금</p>
								<form:textarea path="contents3" name="contents3"
									class="form-control" rows="10" id="comment"></form:textarea>
								<br />
								<p style="font-size: 20px;">SM 사업 일정</p>
								<form:textarea path="contents4" name="contents4"
									class="form-control" rows="15" id="comment"></form:textarea>
							</div>
							<div class="modal-footer">
								<button type="submit" value="modifyMain" class="btn btn-success">확인</button>
								&nbsp
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">닫기</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</sec:authorize>

	</div>

	<!-- Bootstrap core JavaScript -->
	<script src="${R}res/js/jquery.min.js"></script>
	<script src="${R}res/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="${R}res/js/jquery.easing.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="${R}res/js/resume.min.js"></script>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
		integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
		integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
		crossorigin="anonymous"></script>

	<script src="https://use.fontawesome.com/25b35a2279.js"></script>

</body>

</html>