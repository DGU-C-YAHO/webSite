<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html lang="ko">

<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>학습 데이터 자동 추출</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <script src="js/upload.js"></script>
    <script src="js/formadd.js"></script>

    <link rel="stylesheet" href="assets/vendors/iconly/bold.css">
    <link rel="stylesheet" href="assets/vendors/bootstrap-icons/base.css">
    <link rel="stylesheet" href="assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="shortcut icon" href="assets/images/favicon.svg" type="image/x-icon">

      <script>
      function al(){
          alert("먼저 영상 입력을 해주세요");
      }

      function al1(){
        alert(" 값을 입력한 후 아래의 다음단계로 가는 버튼을 눌러주세요");
      }

      </script>
</head>

<body>
    <div id="app">
        <div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
                <div class="sidebar-header">
                    <div class="d-flex justify-content-between">
                        <div class="logo">
                            <a href="index.jsp"><img src="assets/images/logo/logo1.png" alt="Logo" srcset=""></a>
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
                            <a href="index.jsp" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>홈</span>
                            </a>
                        </li>

                        <li class="sidebar-item">
                            <a href="object-select.jsp" class='sidebar-link'>
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

                        <li class="sidebar-item active ">
                            <a href="object-add.html" class='sidebar-link'>
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

                        <li class="sidebar-item">
                            <a href="Javascript: al1();" class='sidebar-link'>
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
                            <a href="Javascript: al();" class='sidebar-link'>
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
                <h3>객체를 추가하세요!</h3>
                <section class="section">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">객체 추가 단계 이용 메뉴얼</h4>
                        </div>
                        <div class="card-body">
                          1. 객체 클래스 이름과 객체 클래스 ID를 입력해주세요<br>
                          2. 소량(300~800장)정도의 학습 데이터를 입력해주세요
                        </div>
                    </div>
                </section>

            </div>
            <form action="addSession.jsp" method="post" enctype="multipart/form-data">
            <div class="page-content">
              <section class="section">
                  <div class="card">
                      <div class="card-header">
                          <h4 class="card-title">추가할 객체 정보</h4>
                      </div>

                      <div class="card-body">
                          <div class="row">
                              <div class="col-md-6">
                                <div class="form-group">
                                    <label for="disabledInput">추가할 객체 이름</label>
                                    <input type="text" class="form-control" id="plusOBJ" name= "plusOBJ"
                                        placeholder="추가할 객체 이름 반드시 입력되어야함" required>
                                </div>
                              </div>
                              <div class="col-md-6">
                                <div class="form-group">
                                    <label for="basicInput">추가할 객체 ID</label>
                                    <input type="text" class="form-control" id="plusOBJID" name="plusOBJID"
                                        placeholder="추가할 객체 ID 반드시 입력되어야함" required>
                                </div>
                              </div>
                          </div>
                      </div>

                  </div>
                  <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">학습 데이터 업로드</h4>
                            </div>
                            <div class="card-body">
                                            <label for="formFileMultiple" class="form-label">파일을 선택해 주세요.</label>
                                            <input class="form-control" type="file" id="formFileMultiple" name="formFileMultiple" multiple required/>
                                        </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card">
                  <div class="card-header">
                      <h4 class="card-title">Annotation 파일 형식 지정</h4>
                  </div>
                <div class="card-body">
                    <div class="row">
                      <div class="dropdown">

                        <form>
                          <select name="Annotation"class="btn btn-primary dropdown-toggle me-1" type="button"
                              id="Annotation" data-bs-toggle="dropdown"
                              aria-haspopup="true" aria-expanded="false" >
                            <option value="XML">XML</option>
                            <option value="TXT" selected>TXT</option>
                          </select>
                        </form>

                      </div>
                    </div>
                </div>
                </div>

              </section>

              <center>
                  <form action="addSession.jsp" method="post" enctype="multipart/form-data">
                    <input type="submit" class="btn btn-lg btn-primary" value="다음 단계로"> </input>
                  </form>
              </center>
              </form>
          </div>




            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-start">
                        <p></p>
                    </div>
                    <div class="float-end">
                        <p></p>
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
