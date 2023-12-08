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


<%--<td><a href="view/${u.getSeq()}">${u.getEnglish()}</a></td>
                <td>${u.getMeaning()}</td>
                <td>${u.getExplain()}</td>
                <td>${u.getLevel()}</td>
                <td><a href="editform/${u.getSeq()}">Edit</a></td>
                <td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
                --%>

<h1>Edit Form</h1>
<form action="../editok" method="post" accept-charset="UTF-8">
    <input type="hidden" name="seq" value="<%=u.getSeq()%>"/>
    <table>
        <tr><td>Title:</td><td><input type="text" name="english" value="<%=u.getEnglish()%>"/></td></tr>
        <tr><td>Writer:</td><td><input type="text" name="meaning" value="<%=u.getMeaning()%>" /></td></tr>
        <tr><td>Content:</td><td><textarea cols="50" rows="5" name="explain"><%=u.getExplain()%></textarea></td></tr>
        <td>
            <tr><td>

        <label for="lang">Language</label>
        <select name="level" id="lang">
            <option value=''<%=u.getLevel().equals("")|| u.getLevel() == null?"selected":""%>>--선택--</option>
            <option value="1" <%=u.getLevel().equals("1")? "selected":""%>>1</option>
            <option value="2" <%=u.getLevel().equals("2")?"selected":""%>>2</option>
            <option value="3" <%=u.getLevel().equals("3")?"selected":""%>>3</option>
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