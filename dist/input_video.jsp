<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>학습 데이터 자동 추출</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">

    <script src = "http://code.jquery.com/jquery-1.7.1.js"></script>
    <script src="js/upload.js"></script>
    <script src="js/formadd.js"></script>

    <link rel="stylesheet" type="text/css" href="js/style.css">

    <link rel="stylesheet" href="assets/css/bootstrap.css">

    <script type="text/javascript">
      function mainfile(){
        location.href = "/mainfile";
      }
      function mainlink(){
        location.href ="/mainlink";
      }
      function addobj(){
        location.href ="/addobj";
      }

      function vCheck(){
        var nVideo = document.nVideo;
        if(document.getElementById("youtubeURL").value == "" && document.getElementById("formFileMultiple").value==""){
          alert("파일을 입력해주세요");
        }
        else if(document.getElementById("formFileMultiple").value == ""){
          if(document.getElementById("starttime").value == "" && document.getElementById("endtime").value == ""){
            alert("영상 구간 입력해주세요");
          }else{
            location.href="fileUpload.jsp";
          }
        }
        else{
          location.href="fileUpload.jsp";
        }
      }

      function goAl(x){
        var result = confirm("입력하신 영상 정보가 지워집니다. 돌아가시겠습니까?");
        if(result){
          location.href = x;
        }
      }

      function al(){
          alert("먼저 추출 실행을 해주세요");
      }

    </script>

    <link rel="stylesheet" href="assets/vendors/iconly/bold.css">
    <link rel="stylesheet" href="assets/vendors/bootstrap-icons/base.css">
    <link rel="stylesheet" href="assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="shortcut icon" href="assets/images/favicon.svg" type="image/x-icon">
</head>

<body>
    <div id="app">
        <div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
                <div class="sidebar-header">
                    <div class="d-flex justify-content-between">
                        <div class="logo">
                            <a href="Javascript: goAl('index.jsp');"><img src="assets/images/logo/logo1.png" alt="Logo" srcset=""></a>
                        </div>
                        <div class="toggler">
                            <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                        </div>
                    </div>
                </div>
                <div class="sidebar-menu">
                    <ul class="menu">
                        <li class="sidebar-title">Order</li>

                        <li class="sidebar-item">
                            <a href="Javascript: goAl('index.jsp');" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>홈</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a href="Javascript: goAl('object-select.jsp');" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>객체 선택</span>
                            </a>
                        </li>

                        <div style="margin:0 auto; text-align:center;">
                          <ul style="display: table; margin: auto; padding:0;">
                            <li class="sidebar-item">
                                  <img class='arrow' src="images/arrow-down.png" alt="arrow-down.png">
                            </li>
                          </ul>
                        </div>

                        <%
                        Object oMode = session.getAttribute("mode");
                        String mode = (String)oMode;
                        if(mode == "2"){%>
                        <li class="sidebar-item">
                            <a href="Javascript: goAl('object-add.jsp');" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>객체 추가</span>
                            </a>
                        </li>

                        <div style="margin:0 auto; text-align:center;">
                          <ul style="display: table; margin: auto; padding:0;">
                            <li class="sidebar-item">
                                  <img class='arrow' src="images/arrow-down.png" alt="arrow-down.png">
                            </li>
                          </ul>
                        </div>
                        <%}%>

                        <li class="sidebar-item active">
                            <a href="#" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>영상 입력</span>
                            </a>
                        </li>

                        <div style="margin:0 auto; text-align:center;">
                          <ul style="display: table; margin: auto; padding:0;">
                            <li class="sidebar-item">
                                  <img class='arrow' src="images/arrow-down.png" alt="arrow-down.png">
                            </li>
                          </ul>
                        </div>

                        <li class="sidebar-item">
                            <a href="spinner-page.jsp" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>데이터 추출 중</span>
                            </a>
                        </li>

                        <div style="margin:0 auto; text-align:center;">
                          <ul style="display: table; margin: auto; padding:0;">
                            <li class="sidebar-item">
                                  <img class='arrow' src="images/arrow-down.png" alt="arrow-down.png">
                            </li>
                          </ul>
                        </div>

                        <li class="sidebar-item">
                            <a href="Javascript: al();" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>추출 완료</span>
                            </a>
                        </li>

                    </ul>
                </div>
                <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
            </div>
        </div>

        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>

            <div class="page-heading">
                <h3>영상을 올려주세요!</h3>
                <section class="section">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">영상 업로드 메뉴얼</h4>
                        </div>
                        <div class="card-body">
                          <%
                          Object mo = session.getAttribute("mode");
                          String mode1 = (String)mo;
                          String name = "";
                          if(mode1 == "1"){
                            Object name1 = session.getAttribute("selectedOBJ");
                            name = (String)name1;
                          }else{
                            Object name1 = session.getAttribute("plusOBJ");
                            name = (String)name1;
                          }
                          out.println(name+"을 선택하셨습니다.");
                          %>
                          <br>
                          1. 유튜브 영상을 사용하실 거면 링크를 넣어주세요<br>
                          2. 영상을 가지고 계시면 직접 올려주세요 <br>
                          3. 데이터를 추출할 영상 구간을 입력해주세요<br>
                          주의사항: 영상 저작권과 영상에 나오는 개인정보 유출에 주의해주세요. 본 서비스는 해당 부분에서 생긴 문제에 대해 책임을 지지 않습니다.
                        </div>
                    </div>
                </section>
              <div>
                <form action="fileUpload.jsp" method="post" enctype="multipart/form-data" >
                  <section id="input-file-browser">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">영상 파일 업로드</h4>
                                </div>

                                <div class="card-body">
                                  <label for="formFileMultiple" class="form-label">파일을 선택해 주세요.</label>
                                  <input class="form-control" type="file" id="formFileMultiple" name="formFileMultiple" multiple />
                                            </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="section">
                  <div class="card">
                      <div class="card-header">
                          <h4 class="card-title">유튜브 영상 링크</h4>
                      </div>

                      <div class="card-body">
                                  <div class="form-group">
                                      <label for="basicInput">유튜브 영상 링크 주소를 입력해 주세요.</label>
                                      <input type="text" style="width:100%; size:100;" class="form-control" id="youtubeURL"
                                          placeholder="예) https://www.youtube.com/" >
                                  </div>
                      </div>
                      <div class="card-body">
                          <div class="row">
                              <div class="col-md-6">
                                <div class="form-group">
                                    <label for="disabledInput">영상 시작 시간</label>
                                    <input type="text" class="form-control" id="starttime" >
                                </div>
                              </div>
                              <div class="col-md-6">
                                <div class="form-group">
                                    <label for="basicInput">영상 종료 시간</label>
                                    <input type="text" class="form-control" id="endtime" >
                                </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </section>
                  <center>
                  <input style="text-align: middle;" class="btn btn-primary" type="submit" name="Upload" value="추출 시작" onclick="vCheck()">
                </center>
                </form>
              </div>
            </div>

            <div class="page-content">
                <section class="row">
                    <div class="col-12 col-lg-9">


            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-start">
                        <p></p>
                    </div>
                    <div class="float-end">
                        <p>></p>
                    </div>
                </div>
            </footer>
        </div>
    </div>

    <script src="assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>

    <script src="assets/vendors/apexcharts/apexcharts.js"></script>
    <script src="assets/js/pages/dashboard.js"></script>

    <script src="assets/js/main.js"></script>

</body>

</html>
