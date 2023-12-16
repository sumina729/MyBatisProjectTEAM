
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@page import="com.example.BoardDAO, com.example.BoardVO,java.util.*"%>
<%@page import="com.example.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%
  BoardVO u = (BoardVO) request.getAttribute("u");
%>


<html>
  <head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<%--    <link rel="stylesheet" href="list.css">--%>
    <style>

      .pagination-container {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 10px;
      }

      .pagination-button {
        display: inline-block;
        padding: .5em 1em;
        background-color: #f2f2f2;
        color: #0d6efd;
        border-radius: .25rem;
        text-decoration: none;
      }

      .pagination-button.active,
      .pagination-button:hover {
        background-color: #0d6efd;
        color:#fff !important;
      }

      add-button {
        position: absolute;
        top: 0;
        right: 0;
        margin-top: 10px;
        margin-right: 20px;
      }

      .add-button a {
        display: inline-block;
        padding: .2em 1em;
        background-color: #28a745; /* 초록색 */
        color:#fff; /* 흰색 */
        border-radius:.25rem;
        text-decoration:none;
        margin-right: 100%;
      }

      .add-button :hover {
        background-color: #24953f; /* 초록색 */
      }

      .table-container {
        position: relative;
        margin-top: 10px;
        margin-left: 20px;
      }

      .section-title-container {
        display:flex;
        align-items:center;
        margin-left:-20px;
        margin-bottom:-10px
      }

      h2.section-title {
        flex-grow :1 ;
        margin-left :20px ;
        margin-bottom :10px ;
      }

      .modify-button {
        display: inline-block;
        padding: 3px 4px;
        background-color: #a9b1ba;
        color: #fff;
        text-align: center;
        border-radius: 5px;
        font-size: 15px;
        text-decoration: none;
      }

      .delet-button {
        display: inline-block;
        padding: 3px 4px;
        background-color: #1e4776;
        color: #fff;
        text-align: center;
        border-radius: 5px;
        font-size: 15px;
        text-decoration: none;
        border: none;
      }

      .delet-button:hover {
        background-color: #18375a;
      }

      .modify-button:hover {
        background-color:  #959da4;
        color: #fff;
      }

      table td a {
        color: rgb(0, 0, 0);
      }

      table td a:hover {
        color:  #6d6c6c;
      }
    </style>

    <script>
      function delete_ok(id){
        var a = confirm("정말로 삭제하겠습니까?");
        if(a) location.href='deleteOK/' + id;
      }
    </script>
  </head>
  <body>


    <h1>나만의 단어장</h1>

    <div class="container">
      <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
        <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
          <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
          <span class="fs-4">Front-end development : WORD LIST</span>
        </a>

        <ul class="nav nav-pills">
          <li class="nav-item"><a href="#" class="nav-link active" aria-current="page">Home</a></li>
          <li class="nav-item"><a href="#" class="nav-link">Features</a></li>
          <li class="nav-item"><a href="#" class="nav-link">Pricing</a></li>
          <li class="nav-item"><a href="#" class="nav-link">FAQs</a></li>
          <li class="nav-item"><a href="#" class="nav-link">About</a></li>
        </ul>
      </header>
    </div>

    <div class="add-button container">
      <a href="add" class="">Add</a>
    </div>

    <div class="container" style="margin-top: 10px;">
      <!-- Add 버튼 -->
      <table id="list" style="" id="data-table" class="table table-striped table-sm">

        <div class="section-title-container">

        </div>

          <tr>
            <th>english</th>
            <th>meaning</th>
            <th>level</th>
            <th></th>
          </tr>
          <c:forEach items="${list}" var="u">
            <tr>
              <td><a href="view/${u.getSeq()}">${u.getEnglish()}</a></td>
              <td>${u.getMeaning()}</td>
              <%--<td>${u.getLevel()}</td>--%>
              <td>
                ${u.getLevel()}
              </td>
              <td>
                <a href="editform/${u.getSeq()}" class="modify-button">Edit</a>
                <a href="javascript:delete_ok('${u.getSeq()}')" class="delet-button">Delete</a>
              </td>
            </tr>
          </c:forEach>


      </table>
    </div>


    <div class="pagination-container">
      <a href="#" class="pagination-button active">1</a>
      <a href="#" class="pagination-button">2</a>
      <a href="#" class="pagination-button">3</a>
    </div>


    <div class="container">
      <footer class="py-3 my-4">
        <ul class="nav justify-content-center border-bottom pb-3 mb-3">
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
        </ul>
        <div>
          <div style="float:left">

            <p class="text-muted">handong global university | 22200533 | sumin Lee</p>

          </div>

          <div style="float:right">

            <p class="text-muted">© 2021 Company, Inc</p>
          </div>
        </div>

      </footer>
    </div>
  </body>
</html>
