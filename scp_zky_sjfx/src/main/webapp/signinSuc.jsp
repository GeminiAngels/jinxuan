<%@page contentType="text/html;charset=utf-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
	<meta name="description" content="首届“数据分析与知识发现”学术研讨会">
	<meta name="author" content="北京国科智地科技有限公司">
	<link rel="shortcut icon" href="<%=path%>/static/assets/ico/favicon.ico">

	<title>首届“数据分析与知识发现”学术研讨会</title>
	
	<!-- Bootstrap core CSS -->
	<link href="<%=path%>/static/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/spkx/css/style.css" />

	<!-- Custom styles for this template -->
	<link href="<%=path%>/static/css/font-awesome.min.css" rel="stylesheet">
	
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<!-- 头部模块 -->
	<%@include file="/inc/headbar.jsp" %>
	<div id="contactWrap">
		<div class="overlay">
			<div class="container">
				<form id="signinForm" onsubmit="javascript:return false">
					<div class="row">
						<div class="col-sm-8 col-sm-offset-2">
							<div class="alert alert-success"><i class="fa fa-check" style="border:1px solid;border-radius: 100%"></i> 参会人员：<span></span> 签到成功！<a href="index.jsp" class="pull-right" target="_self">返回首页</a></div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div> <!-- /contactWrap -->
	
	<%@include file="/inc/footer.jsp"%>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
	<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
    <script src="<%=path%>/static/js/jquery-1.11.1.min.js"></script>
    <script src="<%=path%>/static/js/bootstrap.min.js"></script>
    <script src="<%=path%>/static/spkx/js/biz.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function() {
		$('#signinBtn').off('click').on('click',function(e){

			var that = this;
			var register = {
				telphone:$('#telphone_signin').val()
			};
			if(!register.telphone){
				$('#telphone_signin').focus().attr('placeholder','请如实填写您的手机号！');
				return;
			}
			$(that).addClass('disabled');
			RegisterService.getRegisterByTelphone(register.telphone,function(reg){
				if(!reg&&!reg.id){
					alert('您还没有报名，现在快速报名并进入官方微信群！');
					window.location.href = 'register.jsp?position=contactWrap';
				} else {
					RegisterService.registerSignin(register,function(msg){
						if(msg){
							$(that).removeClass('disabled');
							$('#signinForm')[0].reset();
							window.location.href = 'signinSuc.jsp?id='+reg.id;
						}
					});
				}
			});
		});
	});
	</script>
</body>
</html>