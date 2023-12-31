<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authentication property="principal" var="mvo" />

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
        /* 추가한 부분: 전체 폰트에 대한 스타일 */
        body {
            font-family: "Helvetica Neue", "Apple SD Gothic Neo", sans-serif;
        }

        /* 추가한 부분: .marko 클래스에 대한 스타일 */
        .marko {  /* 원래 크기의 1.2배로 키움 */
        font-size: 200%;
            /* 여러분이 원하는 스타일 속성을 추가하세요 */
        }
     
     
        /* 추가한 부분: 토글 버튼 스타일 */
       .navbar-toggler {
           border: none;
           outline: none;
       }
   
       /* 추가한 부분: 토글 버튼 아이콘 색상 */
       .navbar-toggler-icon {
           color: #000; /* 원하는 색상으로 변경하세요 */
       }
    </style>
</head>
<body>
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar Start -->
      <div class="container-fluid nav-bar bg-transparent">
          <nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4 shadow-none"> <!-- shadow-none 클래스 추가 -->
                <a href="recommend" class="navbar-brand d-flex align-items-center text-center">
                <div class="p-2 me-2" style="display: flex; align-items: center;">
                    <h1 class="m-0 marko">Babe</h1>
                </div>
            </a>

               <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
             <span class="navbar-toggler-icon"></span>
            </button>
                
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto">
                        <!-- <a href="index" class="nav-item nav-link">Home</a> -->
                        <a href="recommend" class="nav-item nav-link">RECOMMEND</a>
                        <a href="interaction" class="nav-item nav-link">Like</a>                           
                        <!-- <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                                <a href="404.html" class="dropdown-item">404 Error</a>
                            </div>
                        </div> -->
                        
                    </div>
                    <c:if test="${empty mvo}">
                  <form class="form-inline" action="${cpath}/login" method="post">
                          <a href="login" class="btn btn-primary px-3 d-none d-lg-flex">LOGIN</a>
                       </form>
                    </c:if>
                    <c:if test="${not empty mvo}">
                     <div class="form-group">
                        <label></label>
                     </div>
                     <!-- <a href="chat" class="nav-item nav-link">CHAT</a> -->
                     <a href="showChatRoom?chatRoomUuid=" class="nav-item nav-link">CHAT</a>
                  <form class="form-iniline" action="${cpath}/profile" method="get">
                     <button type="submit" class="btn btn-prmary px-3 d-none d-lg-flex" style="color: var(--dark); font-weight: 500;">MyPage</button>
                  </form>
                  <form class="form-inline" action="${cpath}/logout" method="get">
                     <button type="submit" class="btn btn-default" style="color: var(--dark); font-weight: 500;">LOGOUT</button>
                  </form>
            </c:if>   
                </div>
            </nav>
         </div>

</body>
</html>