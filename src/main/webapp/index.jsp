<%@page pageEncoding="UTF-8" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<body>
您好：
<shiro:authenticated>
    <shiro:principal/>
</shiro:authenticated>
<shiro:notAuthenticated>
    您还未<a href="${pageContext.request.contextPath}/user/login.jsp">登陆</a>，登陆之后浏览更多精彩内容！
</shiro:notAuthenticated>
<br/>
------------------------------------------------------------------------------------
<br/>
<shiro:authenticated>
    轮播图管理<br/>
    文章管理<br/>
    用户管理<br/>
    <shiro:hasPermission name="user:select">
        &nbsp;&nbsp;所有用户<br/>
    </shiro:hasPermission>
    <shiro:hasPermission name="user:add">
        &nbsp;&nbsp;添加用户<br/>
    </shiro:hasPermission>
    <shiro:hasPermission name="user:update">
        &nbsp;&nbsp;修改用户<br/>
    </shiro:hasPermission>
    <shiro:hasPermission name="user:delete">
        &nbsp;&nbsp;删除用户<br/>
    </shiro:hasPermission>

    <shiro:hasRole name="super">
        管理员管理<br/>
    </shiro:hasRole>


</shiro:authenticated>


</body>
</html>
