<%--
  Created by IntelliJ IDEA.
  User: 说好的幸福呢
  Date: 2020/5/17
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setAttribute("BASE_PATH",request.getContextPath());
%>
<html>
<head>
    <title>修改信息</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
    *{
        padding: 0;
        margin: 0;
    }
    .container{
        margin-top: 15%;
    }
    .row{
        width: 55%;
        margin: 0 auto;
    }
    .btn{
        width: 20%;
    }
</style>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12" style="background-color:lightpink">
            <h2 align="center">修改部门信息</h2>
        </div>
        <form action="${BASE_PATH}/dept/update" method="post">
            <table class="table table-condensed table-bordered text-center">
                <tr>
                    <td>部门名称:</td>
                    <td>
                        <input type="text" name="dname" value="${d.dname}"/>
                    </td>
                    <td>部门地址:</td>
                    <td>
                        <input type="text" name="loc" value="${d.loc}"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <input type="hidden" name="dno" value="${d.dno}"/>
                        <a href="${BASE_PATH}/dept/back" class="btn btn-info">返回</a>
                        <button type="submit" class="btn btn-success">修改</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
</body>
</html>
