<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <base href="<%=basePath%>"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/public.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css"/>

    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="js/jquery.validate.js"></script>
    <script type="text/javascript" src="js/messages_zh.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#regForm").validate({
                errorPlacement: function(error, element) {
                    // Append error within linked label
                    $( element )
                        .closest( "form" )
                        .find( "label[for='" + element.attr( "id" ) + "']" )
                        .append( error );
                },
                errorElement: "span",
                rules: {
                    username: {
                        required: true,
                        minlength: 5
                    },
                    name: "required",
                    password: {
                        required: true,
                        minlength: 6,
                        maxlength: 12
                    },
                    rePassword: {
                        required: true,
                        minlength: 6,
                        maxlength: 12,
                        equalTo: "#password"
                    },
                    birthday: {
                        required: false,
                        data: true
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    mobile: {
                        required: true,
                        digits: true,
                    },
                    address: {
                        required: true,
                        digits: true,
                    },
                },
                messages: {
                    username: "用户名长度不能小于5",
                    name: "请输入您的姓名",
                    password: "请输入长度为6-12的密码",
                    rePassword: "请确保两次密码一致",
                    birthday: "请输入有效的日期",
                    mobile: "请正确填写您的手机号码",
                    address: "请输入您的地址"
                }
            })
        });
    </script>
    <style>
        .reg p .error {
            display: inline-block;
            background-color: #5bc0de;
            height: 20px;
            line-heigth: 25px;
            padding-left: 5px;
            margin-left: 0px;
        }

    </style>
</head>
<body><!-------------------reg-------------------------->

<div class="reg">
    <form action="User/reg" id="regForm" method="post" onsubmit="">
        <h1>
            <a href="index.html"></a>
        </h1>
        <p>

            <input type="text" id="username" name="username" placeholder="用户账号">
            <label for="username"></label>
        </p>
        <p>
            <label for="name"></label>
            <input type="text" id="name" name="name" placeholder="用户姓名"><span></span>
        </p>
        <p>
            <label for="password"></label>
            <input type="password" id="password" name="password" placeholder="密码">
        </p>
        <p>
            <label for="rePassword"></label>
            <input type="password" id="rePassword" name="rePassword" placeholder="确认密码">
        </p>
        <p>
            男<label>
            <input style="width:15px; height:15px" type="radio" name="sex" value="T" checked="checked">
        </label>
            &nbsp; &nbsp;&nbsp;
            女<label>
            <input style="width:15px; height:15px" type="radio" name="sex" value="F" checked="checked">
        </label>
        </p>
        <p>
            <label for="birthday"></label>
            <input type="date" id="birthday" name="birthday" placeholder="生日"/>
        </p>
        <p>
            <label for="email"></label>
            <input type="text" id="email" name="email" placeholder="邮箱"/>
        </p>
        <p>
            <label for="mobile"></label>
            <input type="text" id="mobile" name="mobile" placeholder="电话号码"/>
        </p>
        <p>
            <label for="address"></label>
            <input type="text" id="address" name="address" placeholder="地址"/>
        </p>
        <p>
            <label>
                <input class="code" type="text" name="code" value="" onfocus="FocusItem(this)" onblur="CheckItem(this)"
                       placeholder="验证码">
            </label>
            <img src="User/GetCode" alt="看不清？换一张" onclick="change(this)"><span class="error"></span></p>
        <p>
            <input type="submit" class="submit" name="submit" value="注册">
        </p>
        <p>完成此注册，即表明您同意了我们的<a href="#">
            </使用条款和隐私策略/></a></p>
        <p class="txt"><a href="login.jsp"><span></span>已有账号登录</a></p>
        <!--<a href="#" class="off"><img src="img/temp/off.png"></a>--></form>
</div>
</body>
</html>
