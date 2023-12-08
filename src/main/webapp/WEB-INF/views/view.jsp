<%@ page import="com.example.BoardVO" %>
\<%@ page language="java" contentType="text/html; charset=UTF-8"
          pageEncoding="UTF-8"  isELIgnored="false"%>

<%
    BoardVO u = (BoardVO) request.getAttribute("u");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <style>


        body {
            background-color: rgb(0, 0, 0);
        }

        h1{
            color: #ffffff;
        }
        p{
            color: #ffffff;
        }
        li{
            color:#ffffff;
        }
        .bt2 {

            display: inline-block;
            font-weight: 300;
            line-height: 1.5;
            text-align: center;
            text-decoration: none;
            vertical-align: middle;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
            background-color:#ffffff;
            border: 1px solid transparent;
            padding: 0.2rem 0.4rem;
            font-size: 1rem;
            color: black;
            border-radius: 0.25rem;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;

        }
        .bt2:hover{
            background-color: #3e3e3e;
        }

    </style>

    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='../deleteOK/' + id;
        }
    </script>
</head>
<body>


<h1>상세페이지</h1>


<div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
        <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
            <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
            <span class="fs-4" style="color: #ffffff;">Front-end development : WORD LIST</span>
        </a>

        <ul class="nav nav-pills">
            <li class="nav-item"><a href="#" class="nav-link active" aria-current="page">Home</a></li>
            <li class="nav-item"><a href="#" class="nav-link">Features</a></li>
            <li class="nav-item"><a href="#" class="nav-link">Pricing</a></li>
            <li class="nav-item"><a href="#" class="nav-link">FAQs</a></li>
            <li class="nav-item"><a href="#" class="nav-link">About</a></li>
        </ul>
    </header>

    <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
        <div style="text-align: right;">
            <a style="" href="../editform/${u.getSeq()}" class="bt2 btn-lg btn-secondary fw-bold border-white bg-white">edit</a>
            <a href="javascript:delete_ok('${u.getSeq()}')" class="bt2 btn-lg btn-secondary fw-bold border-white bg-white">Delete</a><br>

        </div>


        <main class="px-3">
            <%--
            <h1 style="font-size: 7ch">though</h1>
            <p style="font-size: 2ch" class="lead">1.	(비록) …이긴 하지만</p>
            <p style="font-size: 2ch" class="lead">2.	(앞에 말한 내용의 어조를 누그러뜨리기 위해 덧붙여) 그래도 …이기는 하다</p>
            <p style="font-size: 2ch" class="lead">3.	(문장 끝에 와서) 그렇지만</p>
            <p style="font-size: 1ch" class="lead">발음 : 미국식 [ ðoʊ ] 영국식 [ ðəʊ ]</p>--%>

                <%--<td><a href="view/${u.getSeq()}">${u.getEnglish()}</a></td>
                <td>${u.getMeaning()}</td>
                <td>${u.getExplain()}</td>
                <td>${u.getLevel()}</td>
                <td><a href="editform/${u.getSeq()}">Edit</a></td>
                <td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
                --%>
            <p style="font-size: 8ch" class="lead"><%=u.getEnglish() %></p>
            <p style="font-size: 4ch" class="lead">작성자 : <%=u.getMeaning() %></p>
            <p style="font-size: 2ch" class="lead"><%=u.getExplain() %></p>
            <p style="font-size: 2ch" class="lead">구분 : <%=u.getLevel() %></p>
            <p style="font-size: 1ch" class="lead">등록일 : <%=u.getRegdate() %> 수정일 : <%=u.getModifydate()%></p>



            <div>  <!-- div 태그 추가 -->
                <div style="text-align: center;">
                    <a style="color: black;" href="../list" class="btn btn-lg btn-secondary fw-bold border-white bg-white">목록으로</a>
                </div>
            </div>

        </main>


    </div>

    <div class="container">
        <footer class="py-3 my-4">
            <ul  class="nav justify-content-center border-bottom pb-3 mb-3">
                <li class="nav-item"><a href="#" class="nav-link px-2 " style="color: #ffffff;">Home</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 " style="color: #ffffff;">Features</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 " style="color: #ffffff;">Pricing</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 " style="color: #ffffff;">FAQs</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 " style="color: #ffffff;">About</a></li>
            </ul>
            <div>
                <div style="float:left">

                    <p>handong global university | 22200533 | sumin Lee</p>

                </div>

                <div style="float:right">

                    <p>© 2021 Company, Inc</p>
                </div>
            <div>


        </footer>
    </div>


<%--
<p>Title : <%=u.getTitle() %></p>
<p>Writer : <%=u.getWriter() %></p>
<p>Content : <%=u.getContent() %></p>
<p>Category : <%=u.getCategory() %></p>
<p>등록일 : <%=u.getRegdate() %> 수정일 : <%=u.getModifydate()%></p>


<a href="../editform/${u.getSeq()}">Edit</a>
<a href="javascript:delete_ok('${u.getSeq()}')">Delete</a><br>
<a href="../list">리스트로 돌아가기</a>--%>

</body>
</html>