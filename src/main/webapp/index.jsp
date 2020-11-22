<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%
    pageContext.setAttribute("BASE_PATH", request.getContextPath());
%>
<html>
<head>
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
    div.row{
        width: 50%;
        margin: 0 auto;
    }
    div.row h2{
        color: orange;
    }
    .btn{
        width: 30%;
        margin-left: 35%;
    }
</style>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12" style="background-color: #afd9ee">
            <h2 align="center">用户登录</h2>
        </div>
        <div class="col-lg-12 col-md-12 col-sm-12" style="background-color: gainsboro;">
            <s:fielderror cssStyle="margin: 0.5rem auto;text-align: center;list-style: none;color: red"/>
            <form action="${BASE_PATH}/user/login" method="post" style="padding-top: 1rem;padding-bottom: 1rem;">
                <div class="form-group">
                    <label for="user">用户名：</label>
                    <input type="text" name="uname" class="form-control" id="user" placeholder="用户名"/>
                </div>
                <div class="form-group">
                    <label for="password">密码：</label>
                    <input type="password" name="upwd" class="form-control" id="password" placeholder="密码"/>
                </div>
                <button type="submit" class="btn btn-success">登录</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
