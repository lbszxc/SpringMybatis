<%--
  Created by IntelliJ IDEA.
  User: 说好的幸福呢
  Date: 2020/5/15
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    request.setAttribute("BASE_PATH",request.getContextPath());
%>
<html>
<head>
    <title>主页</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
    *{
        margin: 0;
        padding: 0;
    }
    .container{
        margin-top: 10%;
    }
    .row{
        width: 50%;
        margin: 0 auto;
    }
    .btn{
        width: 20%;
    }
</style>
<body>

<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12" style="background-color:lightsalmon">
            <h2 align="center">详细</h2>
        </div>
        <table class="table table-hover table-bordered text-center">
            <tr>
                <td>部门ID</td>
                <td>部门名称</td>
                <td>部门地址</td>
            </tr>
            <tr>
                <td>${dept.dno}</td>
                <td>${dept.dname}</td>
                <td>${dept.loc}</td>
            </tr>
            <tr>
               <td colspan="3">
                  <a href="${BASE_PATH}/dept/back" class="btn btn-info">返回</a>
               </td>
            </tr>
        </table>
    </div>
</div>
</div>
</body>
</html>
