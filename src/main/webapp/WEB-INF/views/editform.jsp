<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@page import="com.example.BoardDAO, com.example.BoardVO,java.util.*"%>
<%@page import="com.example.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    BoardVO u = (BoardVO) request.getAttribute("u");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form action="../editok" method="post" accept-charset="UTF-8">
    <input type="hidden" name="seq" value="<%=u.getSeq()%>"/>
    <table>
        <tr><td>Title:</td><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
        <tr><td>Writer:</td><td><input type="text" name="writer" value="<%= u.getWriter()%>" /></td></tr>
        <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td></tr>
        <td>
            <tr><td>

        <label for="lang">Language</label>
        <select name="category" id="lang">
            <option value=''<%=u.getCategory().equals("")|| u.getCategory() == null?"selected":""%>>--선택--</option>
            <option value="javascript" <%=u.getCategory().equals("javascript")?"selected":""%>>JavaScript</option>
            <option value="php" <%=u.getCategory().equals("php")?"selected":""%>>PHP</option>
            <option value="java" <%=u.getCategory().equals("java")?"selected":""%>>Java</option>
            <option value="golang" <%=u.getCategory().equals("golang")?"selected":""%>>Golang</option>
            <option value="python" <%=u.getCategory().equals("python")?"selected":""%>>Python</option>
            <option value="c#" <%=u.getCategory().equals("c#")?"selected":""%>>C#</option>
            <option value="C++" <%=u.getCategory().equals("C++")?"selected":""%>>C++</option>
            <option value="erlang" <%=u.getCategory().equals("erlang")?"selected":""%>>Erlang</option>
        </select>

    </td></tr>
        </td>
        </tr>
        <tr><td colspan="2"><input type="submit" value="Edit Post"/>
            <input type="button" value="Cancel" onclick="history.back()"/></td></tr>
    </table>
</form>

</body>
</html>
</body>
</html>