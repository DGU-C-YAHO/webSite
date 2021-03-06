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
    <script src="js/select.js"></script>
    <script type="text/javascript/">
      $(function (){
    	   $("#btn_toggle").click(function (){
      	    $("#Toggle").toggle();
          });
        });
    </script>
    <script>
      function myFunction1() {
        var veh = document.getElementById("vehicle");
        if (veh.style.display === "none") {
          veh.style.display = "block";
        } else {
          veh.style.display = "none";
        }
      }
      function myFunction2() {
        var liv = document.getElementById("livingThings");
        if (liv.style.display === "none") {
          liv.style.display = "block";
        } else {
          liv.style.display = "none";
        }
      }
      function myFunction3() {
        var foo = document.getElementById("foods");
        if (foo.style.display === "none") {
          foo.style.display = "block";
        } else {
          foo.style.display = "none";
        }
      }
      function myFunction4() {
        var kit = document.getElementById("kitchenTools");
        if (kit.style.display === "none") {
          kit.style.display = "block";
        } else {
          kit.style.display = "none";
        }
      }
      function myFunction5() {
        var spo = document.getElementById("sports");
        if (spo.style.display === "none") {
          spo.style.display = "block";
        } else {
          spo.style.display = "none";
        }
      }
      function myFunction6() {
        var bel = document.getElementById("belongings");
        if (bel.style.display === "none") {
          bel.style.display = "block";
        } else {
          bel.style.display = "none";
        }
      }
      function myFunction7() {
        var furn = document.getElementById("furn_elect");
        if (furn.style.display === "none") {
          furn.style.display = "block";
        } else {
          furn.style.display = "none";
        }
      }
      function myFunction8() {
        var oth = document.getElementById("otherThings");
        if (oth.style.display === "none") {
          oth.style.display = "block";
        } else {
          oth.style.display = "none";
        }
      }

      function getID(nameV){
        document.getElementById("selectedOB").value = nameV;
      }

      function vCheck(){
        var nVideo = document.nVideo;
        if(document.getElementById("selectedOB").value == ""){
          alert("객체를 선택해주세요 원하시는 객체가 없으면 객체 추가 모드를 선택해주세요");
        }
        else if(document.getElementById("OBJid").value==""){
          alert("정확한 어노테이션 추출을 위한 객체 ID를 입력해주세요");
        }
        else{
          nVideo.submit();
        }
      }

      function al(){
          alert("먼저 영상 입력을 해주세요");
      }

      function al1(){
        if(document.getElementById("selectedOB").value == ""){
          alert("객체를 선택해주세요 원하시는 객체가 없으면 객체 추가 모드를 선택해주세요");
        }
        else if(document.getElementById("OBJid").value==""){
          alert("정확한 어노테이션 추출을 위한 객체 ID를 입력해주세요");
        }
        else{
          location.href="selectSession.jsp?selectedOB="+document.getElementById("selectedOB").value+"&OBJid="+document.getElementById("OBJid").value;
        }
      }

</script>
    <style>
      #divToggle{
        width: 100%;
  padding: 50px 0;
  text-align: center;
  background-color: lightblue;
  margin-top: 20px;
      }
    </style>
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

                        <li class="sidebar-item active ">
                            <a href="#" class='sidebar-link'>
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
                                          <button onclick="myFunction1()" style="margin:0 auto; width:auto;" class = "btn btn-outline-primary">탈 것 리스트 보기</button>
                                          <div style="text-align: center; display:none;" id="vehicle">
                                            <br>
                                              <a href="Javascript: getID('자전거');" class="btn btn-outline-primary" id="byc">자전거</a>
                                              <a href="Javascript: getID('자동차');" class="btn btn-outline-primary" id="car">자동차</a>
                                              <a href="Javascript: getID('오토바이');" class="btn btn-outline-primary" id="motoc">오토바이</a>
                                              <a href="Javascript: getID('비행기');" class="btn btn-outline-primary" id="plane">비행기</a>
                                              <a href="Javascript: getID('버스');" class="btn btn-outline-primary" id="bus">버스</a>
                                              <a href="Javascript: getID('기차');" class="btn btn-outline-primary" id="train">기차</a>
                                              <a href="Javascript: getID('트럭');" class="btn btn-outline-primary" id="truck">트럭</a>
                                              <a href="Javascript: getID('보트');" class="btn btn-outline-primary" id="boat">보트</a>
                                            </br>
                                          </div>
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
                                          <button onclick="myFunction2()" style="margin:0 auto; width:auto;" class = "btn btn-outline-primary">생물 리스트 보기</button>
                                          <div style="text-align: center; display:none;" id="livingThings">
                                            <br>
                                                <a href="Javascript: getID('사람');" class="btn btn-outline-primary">사람</a>
                                                <a href="Javascript: getID('고양이');" class="btn btn-outline-primary">고양이</a>
                                                <a href="Javascript: getID('개');" class="btn btn-outline-primary">개</a>
                                                <a href="Javascript: getID('말');" class="btn btn-outline-primary">말</a>
                                                <a href="Javascript: getID('양');" class="btn btn-outline-primary">양</a>
                                                <a href="Javascript: getID('소');" class="btn btn-outline-primary">소</a>
                                                <a href="Javascript: getID('코끼리');" class="btn btn-outline-primary">코끼리</a>
                                                <a href="Javascript: getID('곰');" class="btn btn-outline-primary">곰</a>
                                                <a href="Javascript: getID('얼룩말');" class="btn btn-outline-primary">얼룩말</a>
                                                <a href="Javascript: getID('기린');" class="btn btn-outline-primary">기린</a>
                                            </div>
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
                                          <button onclick="myFunction3()" style="margin:0 auto; width:auto;" class = "btn btn-outline-primary">음식 리스트 보기</button>
                                          <div style="text-align: center; display:none;" id="foods">
                                            <br>
                                                <a href="Javascript: getID('바나나');" class="btn btn-outline-primary">바나나</a>
                                                <a href="Javascript: getID('사과');" class="btn btn-outline-primary">사과</a>
                                                <a href="Javascript: getID('샌드위치');" class="btn btn-outline-primary">샌드위치</a>
                                                <a href="Javascript: getID('오렌지');" class="btn btn-outline-primary">오렌지</a>
                                                <a href="Javascript: getID('브로콜리');" class="btn btn-outline-primary">브로콜리</a>
                                                <a href="Javascript: getID('당근');" class="btn btn-outline-primary">당근</a>
                                                <a href="Javascript: getID('핫도그');" class="btn btn-outline-primary">핫도그</a>
                                                <a href="Javascript: getID('피자');" class="btn btn-outline-primary">피자</a>
                                                <a href="Javascript: getID('도넛');" class="btn btn-outline-primary">도넛</a>
                                                <a href="Javascript: getID('케이크');" class="btn btn-outline-primary">케이크</a>
                                              </br>
                                            </div>
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
                                          <button onclick="myFunction4()" style="margin:0 auto; width:auto;" class = "btn btn-outline-primary">식기도구 & 주방가전 리스트 보기</button>
                                          <div style="text-align: center; display:none;" id="kitchenTools">
                                            <br>
                                                <a href="Javascript: getID('병');" class="btn btn-outline-primary">병</a>
                                                <a href="Javascript: getID('와인 잔');" class="btn btn-outline-primary">와인 잔</a>
                                                <a href="Javascript: getID('컵');" class="btn btn-outline-primary">컵</a>
                                                <a href="Javascript: getID('포크');" class="btn btn-outline-primary">포크</a>
                                                <a href="Javascript: getID('칼');" class="btn btn-outline-primary">칼</a>
                                                <a href="Javascript: getID('숟가락');" class="btn btn-outline-primary">숟가락</a>
                                                <a href="Javascript: getID('그릇');" class="btn btn-outline-primary">그릇</a>
                                                <a href="Javascript: getID('전자레인지');" class="btn btn-outline-primary">전자레인지</a>
                                                <a href="Javascript: getID('오븐');" class="btn btn-outline-primary">오븐</a>
                                                <a href="Javascript: getID('토스터');" class="btn btn-outline-primary">토스터</a>
                                                <a href="Javascript: getID('싱크대');" class="btn btn-outline-primary">싱크대</a>
                                                <a href="Javascript: getID('냉장고');" class="btn btn-outline-primary">냉장고</a>
                                            </div>
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
                                          <button onclick="myFunction5()" style="margin:0 auto; width:auto;" class = "btn btn-outline-primary">스포츠(도구) 리스트 보기</button>
                                          <div style="text-align: center; display:none;" id="sports">
                                            <br>
                                            <a href="Javascript: getID('프리스비');" class="btn btn-outline-primary">프리스비</a>
                                            <a href="Javascript: getID('스키');" class="btn btn-outline-primary">스키</a>
                                            <a href="Javascript: getID('스노우보드');" class="btn btn-outline-primary">스노우보드</a>
                                            <a href="Javascript: getID('스포츠 공');" class="btn btn-outline-primary">스포츠 공</a>
                                            <a href="Javascript: getID('연');" class="btn btn-outline-primary">연</a>
                                            <a href="Javascript: getID('야구 방망이');" class="btn btn-outline-primary">야구 방망이</a>
                                            <a href="Javascript: getID('야구 글러브');" class="btn btn-outline-primary">야구 글러브</a>
                                            <a href="Javascript: getID('스케이트 보드');" class="btn btn-outline-primary">스케이트 보드</a>
                                            <a href="Javascript: getID('서핑 보드');" class="btn btn-outline-primary">서핑 보드</a>
                                            <a href="Javascript: getID('테니스 자켓');" class="btn btn-outline-primary">테니스 라켓</a>
                                            </div>
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
                                          <button onclick="myFunction6()" style="margin:0 auto; width:auto;" class = "btn btn-outline-primary">소지품 리스트 보기</button>
                                          <div style="text-align: center; display:none;" id="belongings">
                                            <br>
                                            <a href="Javascript: getID('베낭');" class="btn btn-outline-primary">배낭</a>
                                            <a href="Javascript: getID('우산');" class="btn btn-outline-primary">우산</a>
                                            <a href="Javascript: getID('핸드백');" class="btn btn-outline-primary">핸드백</a>
                                            <a href="Javascript: getID('넥타이');" class="btn btn-outline-primary">넥타이</a>
                                            <a href="Javascript: getID('여행가방');" class="btn btn-outline-primary">여행 가방</a>
                                            <a href="Javascript: getID('시계');" class="btn btn-outline-primary">시계</a>
                                            </div>
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
                                          <button onclick="myFunction7()" style="margin:0 auto; width:auto;" class = "btn btn-outline-primary">가구 & 전자기기 리스트 보기</button>
                                          <div style="text-align: center; display:none;" id="furn_elect">
                                            <br>
                                            <a href="Javascript: getID('의자');" class="btn btn-outline-primary">의자</a>
                                            <a href="Javascript: getID('소파');" class="btn btn-outline-primary">소파</a>
                                            <a href="Javascript: getID('화분');" class="btn btn-outline-primary">화분</a>
                                            <a href="Javascript: getID('침대');" class="btn btn-outline-primary">침대</a>
                                            <a href="Javascript: getID('식탁');" class="btn btn-outline-primary">식탁</a>
                                            <a href="Javascript: getID('TV모니터');" class="btn btn-outline-primary">TV 모니터</a>
                                            <a href="Javascript: getID('PC');" class="btn btn-outline-primary">휴대용 퍼스널 컴퓨터</a>
                                            <a href="Javascript: getID('휴대전화');" class="btn btn-outline-primary">휴대 전화</a>
                                            <a href="Javascript: getID('키보드');" class="btn btn-outline-primary">키보드</a>
                                            <a href="Javascript: getID('마우스');" class="btn btn-outline-primary">마우스</a>
                                            <a href="Javascript: getID('리모컨');" class="btn btn-outline-primary">리모컨</a>
                                            <a href="Javascript: getID('헤어 드라이어');" class="btn btn-outline-primary">헤어 드라이어</a>
                                            </div>
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
                                          <button onclick="myFunction8()" style="margin:0 auto; width:auto;" class = "btn btn-outline-primary">기타 리스트 보기</button>
                                          <div style="text-align: center; display:none;" id="otherThings">
                                            <br>
                                            <a href="Javascript: getID('신호등');" class="btn btn-outline-primary">신호등</a>
                                            <a href="Javascript: getID('소화전');" class="btn btn-outline-primary">소화전</a>
                                            <a href="Javascript: getID('정지표시판');" class="btn btn-outline-primary">정지 표시판</a>
                                            <a href="Javascript: getID('주차권 자동 판매기');" class="btn btn-outline-primary">주차권 자동 판매기</a>
                                            <a href="Javascript: getID('벤치');" class="btn btn-outline-primary">벤치</a>
                                            <a href="Javascript: getID('변기');" class="btn btn-outline-primary">변기</a>
                                            <a href="Javascript: getID('도서');" class="btn btn-outline-primary">도서</a>
                                            <a href="Javascript: getID('꽃병');" class="btn btn-outline-primary">꽃병</a>
                                            <a href="Javascript: getID('가위');" class="btn btn-outline-primary">가위</a>
                                            <a href="Javascript: getID('곰인형');" class="btn btn-outline-primary">곰인형</a>
                                            <a href="Javascript: getID('칫솔');" class="btn btn-outline-primary">칫솔</a>
                                            </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                    </div>
                </section>

                <center>
                  <form action="object-add.jsp" method="get">
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
              <form action="selectSession.jsp" method="get" name="nVideo">
              <section class="section">
                  <div class="card">
                      <div class="card-header">
                          <h4 class="card-title">객체 정보</h4>
                      </div>

                      <div class="card-body">
                          <div class="row">
                              <div class="col-md-6">
                                <%
                                Object ob = session.getAttribute("selectedOBJ");
                                String ob1 = (String)ob;
                                if(ob == null){
                                  %>
                                  <div class="form-group">
                                      <label for="disabledInput">선택된 객체</label>
                                      <input type="text" class="form-control" name = "selectedOB" id="selectedOB" readonly="readonly"
                                          placeholder="객체를 선택해주세요" required>
                                  </div>
                                  <%
                                }else{
                                  %>
                                  <div class="form-group">
                                      <label for="disabledInput">선택된 객체</label>
                                      <input type="text" class="form-control" name = "selectedOB" id="selectedOB" readonly="readonly"
                                          placeholder="객체를 선택해주세요" value="<%=ob%>" required>
                                  </div>
                                  <%
                                }
                                %>
                              </div>
                              <div class="col-md-6">
                                <%
                                Object OBJid = session.getAttribute("OBJid");
                                String OBJid1 = (String)OBJid;
                                if(OBJid1 == null){
                                  %>
                                  <div class="form-group">
                                      <label for="basicInput">객체 클래스 ID 입력</label>
                                      <input type="text" class="form-control" name= "OBJid" id="OBJid"
                                          placeholder="변경할 클래스 ID 입력" required>
                                  </div>
                                  <%
                                }else{
                                  %>
                                  <div class="form-group">
                                      <label for="basicInput">객체 클래스 ID 입력</label>
                                      <input type="text" class="form-control" name= "OBJid" id="OBJid"
                                          placeholder="변경할 클래스 ID 입력"value="<%=OBJid1%>" required>
                                  </div>
                                  <%
                                }
                                %>
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
                    <input type="submit" class="btn btn-lg btn-primary" onclick="vCheck()" value="다음 단계로"></input>
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
