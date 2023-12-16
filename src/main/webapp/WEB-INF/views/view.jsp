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
            <%--<p style="font-size: 8ch" class="lead"><%=u.getEnglish()%></p>
            <p style="font-size: 2ch" class="lead">난이도 : <%=u.getLevel() %></p>--%>

            <%
                int level = Integer.parseInt(u.getLevel());
                String stars = "";
                for (int i = 0; i < level; i++) {
                    stars += "*";
                }
            %>

                <p class="lead">
                <span style="font-size: 8ch"><%=u.getEnglish() %></span>
                <span style="font-size: 3ch"><%=stars %></span>
            </p>
            <p style="font-size: 4ch" class="lead"><%=u.getMeaning() %></p>
            <p style="font-size: 2ch" class="lead"><%=u.getExplain() %></p>


            <img src="data:image/jpeg;base64,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" alt="My Image">
            <p style="font-size: 1.5ch; text-align:right;" class="lead">등록일 : <%=u.getRegdate() %> 수정일 : <%=u.getModifydate()%></p>



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