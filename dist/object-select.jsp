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
    <link rel="stylesheet" href="assets/css/bootstrap.css">

    <script type="text/javascript/">
      $(function (){
    	   $("#btn_toggle").click(function (){
      	    $("#Toggle").toggle();
          });
        });
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
                            <a href="index.jsp"><img src="assets/images/logo/logo.png" alt="Logo" srcset=""></a>
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

                        <li class="sidebar-item active ">
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

                        <li class="sidebar-item">
                            <a href="input_video.html" class='sidebar-link'>
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
                            <a href="object-settings1.jsp" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>객체 추출 설정</span>
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
                            <a href="index.jsp" class='sidebar-link'>
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
                <h3>객체를 선택하세요!</h3>
                <section class="section">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">객체 선택 단계 이용 메뉴얼</h4>
                        </div>
                        <div class="card-body">
                          1. 영상에서 추출하고픈 객체를 선택해주세요<br>
                          2. 만약 추출하고픈 객체가 없으면 맨 아래 객체 추가 버튼을 눌러주세요
                        </div>
                    </div>
                </section>

                <section class="row">
                    <div class="col-12 col-lg-9">
                      <div class="row">
                          <div class="col-6 col-lg-3 col-md-6">
                              <div class="card">
                                  <div class="card-body px-3 py-4-5">
                                      <div class="row">
                                          <div class="col-md-4">
                                              <div class="stats-icon purple">
                                                  <i class="iconly-boldShow"></i>
                                              </div>
                                          </div>
                                          <div class="col-md-8">
                                              <h6 class="text-muted font-semibold">탈 것</h6>
                                              <h6 class="font-extrabold mb-0">8개</h6>
                                          </div>
                                          <br>
                                          <br>
                                          <br>
                                          <center>
                                            <form>
                                              <input style="margin:0 auto;" class = "btn btn-outline-primary" type="button" value="탈 것 리스트 보기"
                                              form="0">
                                            </form>
                                          </center>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="col-6 col-lg-3 col-md-6">
                              <div class="card">
                                  <div class="card-body px-3 py-4-5">
                                      <div class="row">
                                          <div class="col-md-4">
                                              <div class="stats-icon blue">
                                                  <i class="iconly-boldProfile"></i>
                                              </div>
                                          </div>
                                          <div class="col-md-8">
                                              <h6 class="text-muted font-semibold">생믈</h6>
                                              <h6 class="font-extrabold mb-0">10종</h6>
                                          </div>
                                          <br>
                                          <br>
                                          <br>
                                          <center>
                                            <form>
                                              <input style="margin:0 auto;" class = "btn btn-outline-info"type="button" value="생물 리스트 보기"
                                              form="1">
                                            </form>
                                          </center>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="col-6 col-lg-3 col-md-6">
                              <div class="card">
                                  <div class="card-body px-3 py-4-5">
                                      <div class="row">
                                          <div class="col-md-4">
                                              <div class="stats-icon green">
                                                  <i class="iconly-boldAdd-User"></i>
                                              </div>
                                          </div>
                                          <div class="col-md-8">
                                              <h6 class="text-muted font-semibold">음식</h6>
                                              <h6 class="font-extrabold mb-0">10개</h6>
                                          </div>
                                          <br>
                                          <br>
                                          <br>
                                          <center>
                                            <form>
                                              <input style="margin:0 auto;" class = "btn btn-outline-success"type="button" value="음식 리스트 보기"
                                              form="2">
                                            </form>
                                          </center>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="col-6 col-lg-3 col-md-6">
                              <div class="card">
                                  <div class="card-body px-3 py-4-5">
                                      <div class="row">
                                          <div class="col-md-4">
                                              <div class="stats-icon red">
                                                  <i class="iconly-boldBookmark"></i>
                                              </div>
                                          </div>
                                          <div class="col-md-8">
                                              <h6 class="text-muted font-semibold">식기도구 & 주방가전</h6>
                                              <h6 class="font-extrabold mb-0">12개</h6>
                                          </div>
                                          <br>
                                          <br>
                                          <br>
                                          <center>
                                            <form>
                                              <input style="margin:0 auto;" class = "btn btn-outline-danger"type="button" value="식기도구 & 주방가전 리스트 보기"
                                              form="3">
                                            </form>
                                          </center>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <div class="row">
                          <div class="col-6 col-lg-3 col-md-6">
                              <div class="card">
                                  <div class="card-body px-3 py-4-5">
                                      <div class="row">
                                          <div class="col-md-4">
                                              <div class="stats-icon purple">
                                                  <i class="iconly-boldShow"></i>
                                              </div>
                                          </div>
                                          <div class="col-md-8">
                                              <h6 class="text-muted font-semibold">스포츠(도구)</h6>
                                              <h6 class="font-extrabold mb-0">10개</h6>
                                          </div>
                                          <br>
                                          <br>
                                          <br>
                                          <center>
                                            <form>
                                              <input style="margin:0 auto;" class = "btn btn-outline-primary"type="button" value="스포츠(도구) 리스트 보기"
                                              form="4">
                                            </form>
                                          </center>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="col-6 col-lg-3 col-md-6">
                              <div class="card">
                                  <div class="card-body px-3 py-4-5">
                                      <div class="row">
                                          <div class="col-md-4">
                                              <div class="stats-icon blue">
                                                  <i class="iconly-boldProfile"></i>
                                              </div>
                                          </div>
                                          <div class="col-md-8">
                                              <h6 class="text-muted font-semibold">소지품</h6>
                                              <h6 class="font-extrabold mb-0">6개</h6>
                                          </div>
                                          <br>
                                          <br>
                                          <br>
                                          <center>
                                            <form>
                                              <input style="margin:0 auto;" class = "btn btn-outline-info"type="button" value="소지품 리스트 보기"
                                              form="5">
                                            </form>
                                          </center>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="col-6 col-lg-3 col-md-6">
                              <div class="card">
                                  <div class="card-body px-3 py-4-5">
                                      <div class="row">
                                          <div class="col-md-4">
                                              <div class="stats-icon green">
                                                  <i class="iconly-boldAdd-User"></i>
                                              </div>
                                          </div>
                                          <div class="col-md-8">
                                              <h6 class="text-muted font-semibold">가구 & 전자기기</h6>
                                              <h6 class="font-extrabold mb-0">12개</h6>
                                          </div>
                                          <br>
                                          <br>
                                          <br>
                                          <center>
                                            <form>
                                              <input style="margin:0 auto;" class = "btn btn-outline-success"type="button" value="가구 & 전자기기 리스트 보기"
                                              form="6">
                                            </form>
                                          </center>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="col-6 col-lg-3 col-md-6">
                              <div class="card">
                                  <div class="card-body px-3 py-4-5">
                                      <div class="row">
                                          <div class="col-md-4">
                                              <div class="stats-icon red">
                                                  <i class="iconly-boldBookmark"></i>
                                              </div>
                                          </div>
                                          <div class="col-md-8">
                                              <h6 class="text-muted font-semibold">기타</h6>
                                              <h6 class="font-extrabold mb-0">11개</h6>
                                          </div>
                                          <br>
                                          <br>
                                          <br>
                                          <center>
                                            <form>
                                              <input style="margin:0 auto;" class = "btn btn-outline-danger"type="button" value="기타 리스트 보기"
                                              form="7">
                                            </form>
                                          </center>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                    </div>
                </section>

                <center>
                  <form action="object-add.html" method="get">
                    <input type="submit" class="btn btn-lg btn-primary" value="객체 추가 모드 변경"></input>
                  </form>
                </center>

                <div id="Toggle" style="display:none">

                  <div class="col-6 col-lg-3 col-md-6">
                      <div class="card">
                          <div class="card-body px-3 py-4-5">
                              <div class="row">
                                <button type="button" class="btn btn-primary">자전거</button>
                                <button type="button" class="btn btn-primary">자동차</button>
                                <button type="button" class="btn btn-primary">오토바이</button>
                                <button type="button" class="btn btn-primary">비행기</button>
                                <button type="button" class="btn btn-primary">버스</button>
                                <button type="button" class="btn btn-primary">기차</button>
                                <button type="button" class="btn btn-primary">트럭</button>
                                <button type="button" class="btn btn-primary">보트</button>
                              </div>
                          </div>
                      </div>
                  </div>


                </div>

            </div>

            <div class="page-content">
              <section class="section">
                  <div class="card">
                      <div class="card-header">
                          <h4 class="card-title">객체 정보</h4>
                      </div>

                      <div class="card-body">
                          <div class="row">
                              <div class="col-md-6">
                                <div class="form-group">
                                    <label for="disabledInput">선택된 객체</label>
                                    <input type="text" class="form-control" id="readonlyInput" readonly="readonly"
                                        value="선택된 객체 표시해야함 선택 안 됬으면 안 넘어가게 해야함">
                                </div>
                              </div>
                              <div class="col-md-6">
                                <div class="form-group">
                                    <label for="basicInput">객체 클래스 ID 변경</label>
                                    <input type="text" class="form-control" id="basicInput"
                                        placeholder="변경할 클래스 ID 입력">
                                </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </section>

              <center>
                  <form action="input_video.html" method="get">
                    <input type="submit" class="btn btn-lg btn-primary" value="다음 단계로"></input>
                  </form>
              </center>

          </div>

            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-start">
                        <p>2021 &copy; Mazer</p>
                    </div>
                    <div class="float-end">
                        <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                                href="http://ahmadsaugi.com">A. Saugi</a></p>
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
