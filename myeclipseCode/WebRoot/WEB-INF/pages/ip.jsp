<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<base href="<%=basePath%>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>IP查询</title>
	<link rel="stylesheet" type="text/css"
		href="<s:url value = "/common/css/bootstrap.min.css"/>">
	<link rel="stylesheet" type="text/css"
		href="<s:url value = "/common/css/ip.css"></s:url>">
	<script src="<s:url value = "/common/js/jquery.min.js"></s:url>"></script>
	<script type="text/javascript" src="http://malsup.github.com/jquery.form.js"></script>
	<script src="<s:url value = "/common/js/ip.js"/>"></script>
</head>

<body>

	<div class="head">IPSearch</div>
	<div class="row">

		<!--功能介绍部分-->
		<div class="discription col-lg-4 col-md-6 col-sm-6">
			<p class="about">关于IP地址库</p>
			<p class="strong">我们目前提供的服务：</p>
			<p class="p">根据用户提供的IP地址，快速查询出该IP地址所在的地理信息和地理相关的信息，包括国家、省、市和运营商。</p>
			<p class="strong">我们的优势：</p>
			<p class="p">提供国家、省、市、县、运营商全方位信息，信息维度广，格式规范。</p>
            <div class="yourIp">
        	<span>您的IP是：</span>
        	<span id="showYourIp">192.168.1.2</span>
        </div>
		</div>

		<!--IP地址查询部分-->
		<div class="searchIp col-lg-8 col-md-6 col-sm-6">
			<s:form id="myForm3">
				<input type="text"  placeholder="请输入IP地址" name="ip" id="ip">
				<!-- <input type="submit"  value="查" id="search" ><br> -->
				<button id="search" class="btn" type="submit">查询</button>
			</s:form>

			<!--显示IP地址的详细信息-->
			<table class="table">
				<tr>
					<td>您查询的IP为：</td>
					<td id="showIp"></td>
				</tr>
				<tr>
					<td>国家/地区：</td>
					<td id="showCountry"></td>
				</tr>
				<tr>
					<td>省份：</td>
					<td id="showRegion"></td>
				</tr>
				<tr>
					<td>城市：</td>
					<td id="showCity"></td>
				</tr>
				<tr>
					<td>运营商：</td>
					<td id="showIsp"></td>
				</tr>
			</table>
		</div>
	</div>
    <div class="foot">@Author by <strong>ZhaoYu and HuQiong</strong></div>



</body>
</html>