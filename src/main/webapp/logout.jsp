<%--
  Created by IntelliJ IDEA.
  User: 84264
  Date: 2020/11/21
  Time: 20:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>正在退出</title>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            let logout = '${logout}';
            if (logout == "1"){
                alert("登出成功！");
            } else {
                alert("登出失败！");
            }
            window.location = "/index.jsp"
        })
    </script>
</head>

<body>
    <h2 align="center">正在退出中...</h2>
    <a align="center" href="${pageContext.request.contextPath}/index.jsp">如果网页没有自动跳转，请点击这里...</a>
</body>
</html>
