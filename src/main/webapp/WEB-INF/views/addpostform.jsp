
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>

<h1>Add New Post</h1>

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

    <form class="form-signin" action="addok" method="post" accept-charset="UTF-8">
        <h1 class="h3 mb-3 font-weight-normal"> 단어 추가</h1>

        <label for = "inputWordEnglish"class = "sr-only">영어 단어</label >
        <input type = "text"id = "inputWordEnglish"class = "form-control"placeholder = "영어 단어를 입력하세요"required="" autofocus="" name="english"/>

        <!-- Input field for Korean meaning -->
        <label for ="inputWordKorean"class ="sr-only">단어 뜻 </label >
        <input type ="text"id ="inputWordKorean"class ="form-control"placeholder ="단어 뜻 을 입여력하세요"required="" name="meaning"/>

        <label for ="inputWordExplain"class ="sr-only">단어 설명 </label >
        <input type ="text"id ="inputWordExplain"class ="form-control"placeholder ="단어 뜻 을 입여력하세요"required="" name="explain"/>

        <label for="lang" class="sr-only">난이도</label>
        <select class="form-control" name="level" id="lang">
            <option value="0" selected>난이도를 선택하세요</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select>


        <a href="list" class = "btn btn-lg btn-secondary btn-block" >목록으로 이동하기</a>
        <input type="submit" value="단어 추가하기" class = "btn btn-lg btn-secondary btn-block"/>
    </form>
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
            </div>]
        </div>
    </footer>
</div>



<%--

<form action="addok" method="post" accept-charset="UTF-8">
    <table>
        <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>


        <tr><td>

            <label for="lang">Language</label>
            <select name="category" id="lang">
                <option value=''>-- 선택 --</option>
                <option value="javascript">JavaScript</option>
                <option value="php">PHP</option>
                <option value="java">Java</option>
                <option value="golang">Golang</option>
                <option value="python">Python</option>
                <option value="c#">C#</option>
                <option value="C++">C++</option>
                <option value="erlang">Erlang</option>
            </select>

        </td></tr>

        <tr>
            <td><a href="list">View All Records</a></td>
            <td align="right"><input type="submit" value="Add Post"/></td>
        </tr>
    </table>
</form>
--%>

</body>
</html>