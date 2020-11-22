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
        margin-top: 5%;
    }
    .row{
        width: 50%;
        margin: 0 auto;
    }
    .row table td a{
        color: blue;
        text-decoration: none;
    }
    .row table td a:hover{
        color: red;
        text-decoration: underline;
    }
    #btn{
        width: 20%;
    }
</style>
<body>

<div class="container">
    <p align="center">${sessionScope.user.uname}登录成功！</p>
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12" style="background-color:lightpink">
            <h2 align="center">部门信息表</h2>
        </div>
        <table class="table table-hover table-bordered text-center">
            <tr>
                <td>部门ID</td>
                <td>部门名称</td>
                <td>部门地址</td>
                <td colspan="3">操作</td>
            </tr>
            <c:forEach items="${depts}" var="dept">
            <tr>
                <td>${dept.dno}</td>
                <td>${dept.dname}</td>
                <td>${dept.loc}</td>
                <td><a href="${BASE_PATH}/dept/get?dno=${dept.dno}" class="btn btn-info">详情</a></td>
                <td><a href="${BASE_PATH}/dept/editgo?dno=${dept.dno}" class="btn btn-info">修改</a></td>
                <td><a href="${BASE_PATH}/dept/delete?dno=${dept.dno}" class="btn btn-info">删除</a></td>
            </tr>
            </c:forEach>
            <tr>
                <td colspan="6">
                    <a href="${BASE_PATH}/dept/addgo" class="btn btn-info" id="btn">添加</a>
                </td>
            </tr>
        </table>
    </div>
    <div class="row">
        <div class="col-md-6">
            第${pageInfo.pageNum}页，共${pageInfo.pages}，共${pageInfo.total}条记录
        </div>
        <div class="col-md-6 offset-md-4" style="text-align: right">
            <ul class="pagination">
                <li>
                    <a href="${BASE_PATH}/dept/list?page=1">首页</a>
                </li>
                <c:forEach items="${pageInfo.navigatepageNums}" var="page">
                    <c:if test="${page==pageInfo.pageNum}">
                        <li class="active"><a href="#">${page}</a></li>
                    </c:if>
                    <c:if test="${page!=pageInfo.pageNum}">
                        <li><a href="${BASE_PATH}/dept/list?page=${page}">${page}</a></li>
                    </c:if>
                </c:forEach>
                <li><a href="${BASE_PATH}/dept/list?page=${pageInfo.pages}">末页</a></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
