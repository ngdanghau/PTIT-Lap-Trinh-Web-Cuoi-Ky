<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags" %>


<!doctype html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
      <title>Dashboard - ${ SettingsData.getSite_name() }</title>
      <meta name="description" content="${ SettingsData.getSite_description() }">
      <meta name="author" content="pixelcave">
      <meta name="robots" content="noindex, nofollow">
      <meta property="og:site_name" content="${ SettingsData.getSite_name() }">
      <meta property="og:type" content="website">
      <meta property="og:title" content="${ SettingsData.getSite_name() } - ${ SettingsData.getSite_slogan() }" />
      <meta property="og:url" content="${HOMEURL}" />
      <meta property="og:description" content="${ SettingsData.getSite_description() }" />
      <base href="${APPURL }/"/>
      <link rel="shortcut icon" href="./public/admin/media/favicons/favicon.png">
      <link rel="icon" type="image/png" sizes="192x192" href="./public/admin/media/favicons/favicon-192x192.png">
      <link rel="apple-touch-icon" sizes="180x180" href="./public/admin/media/favicons/apple-touch-icon-180x180.png">
      <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap">
      <link rel="stylesheet" id="css-main" href="./public/admin/css/oneui.min.css">
      
      <link rel='stylesheet' id='wi-fonts-css' href='https://fonts.googleapis.com/css?family=Libre+Franklin%3A400%2C400italic%2C900%7CTinos%3A400%2C400italic%2C700%7CLora%3A400&#038;display=swap&#038;ver=4.6.7.1' media='all' />
   		
   		<style>
		.container { 
		  height: 50px;
		  position: relative;
		}
		
		.center {
		  margin: 0;
		  position: absolute;
		  top: 20%;
		  left: 35%;
		}
		</style>
   		
   </head>
   <body>
      <!-- AMIND CATEGORY EDIT -->
      <div id="page-container" class="sidebar-o sidebar-dark enable-page-overlay side-scroll page-header-fixed main-content-narrow">
      <!-- SIDEBAR FRAGMENT -->
      <jsp:include page="./fragments/sidebar.fragment.jsp"/>
      <!-- HEADER FRAGMENT -->
      <jsp:include page="./fragments/header.fragment.jsp"/>
      <main id="main-container">
         <div class="content">
            <div class="block block-rounded">
               <div class="block-header block-header-default">
                  <h3 class="block-title">Trang thông tin<b style="color:red;"> ${ page.title } </b> </h3>
               </div>
               <div class="block-content block-content-full">
               
                  <form:form action="${APPURL }/admin/edit-information-page.htm" method="POST" modelAttribute="page">
                  
                  	<!-- IN THONG BAO THANH CONG HOAC LOI -->
                  	<c:if test="${successMessage != null && successMessage.trim().length() > 0 }">
						<div class="alert alert-success alert-dismissible" role="alert">
				            <p class="mb-0">
				              ${ successMessage }
				            </p>
				            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			          	</div>
					</c:if>
                  	
                  
                  	<c:if test="${errorMessage != null && errorMessage.size() > 0 }">
						<c:forEach var="error" items="${ errorMessage }">
							<div class="alert alert-danger alert-dismissible" role="alert">
					            <p class="mb-0">
					              ${ error }
					            </p>
					            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				          	</div>
						</c:forEach>
					</c:if>
                  	<!-- KET THUC IN THONG BAO THANH CONG HOAC LOI -->
                     <div class="row">
                        <div class="col-lg-4">
                           <p class="fs-sm text-muted">
                              <p>Tên: Tên riêng sẽ hiển thị trên trang mạng của bạn.</p>
                              <p>Đường dẫn: Đường dẫn (URL). Chuỗi này bao gồm chữ cái thường, số và dấu gạch ngang (-). Ví dụ: https://www.fb.com/game-online123</p>
                              <p>Trạng thái:</br> <b>Xuất bản</b> sẽ hiển thị trên trang chủ. <b>Chờ duyệt</b> sẽ không hiển thị ở trang chủ</p>
                              <p>Mô tả rút gọn: khái quát ý nghĩa trang thông tin này</p>
                              <p>Mô tả đầy đủ: thể hiện đầy đủ ý nghĩa của trang thông tin này </p>
                           </p>
                        </div>
                        <div class="col-lg-8 col-xl-5">
                           <div class="form-floating mb-4">
                              <form:input path="title" class="form-control" id="example-text-input-floating" name="example-text-input-floating" placeholder="John Doe"/>
                              <label for="example-text-input-floating">Tên</label>
                           </div>
                           
                           <div class="form-floating mb-4">
                              <form:input path="page_slug" class="form-control" id="example-email-input-floating" name="example-email-input-floating" placeholder="john.doe@example.com"/>
                              <label for="example-email-input-floating">Đường dẫn</label>
                           </div>
                           
                          <div class="form-floating mb-4">
                              <form:select path="page_status" items="${ publishStatus }" varStatus="status" 
                              				class="form-select" id="example-select-floating" 
                              				name="example-select-floating" 
                              				aria-label="Floating label select example">
                              </form:select>
                              <label for="example-select-floating">Trạng thái</label>
                           </div>
                           
                          <div class="form-floating mb-4">
                              <form:input path="excerpt" class="form-control" id="example-text-input-floating" name="example-text-input-floating" placeholder="John Doe"/>
                              <label for="example-text-input-floating">Mô tả rút gọn</label>
                           </div>
                           
                           <div class="form-floating mb-4">
                              <form:textarea path="content" class="form-control" id="example-textarea-floating" name="example-textarea-floating" style="height: 200px" placeholder="Leave a comment here" />
                              <label for="example-textarea-floating">Mô tả đầy đủ</label>
                           </div>
                        </div>
                     </div>
                     
                      
                      <div class="container">
						  <div class="center">
						    	<input type="button" id="btn-edit-information-page-confirm" data-uid="${ page.id }" class="btn btn-primary" value="Lưu lại">
						    	<input type="button" id="btn-edit-information-page-cancel" class="btn btn-danger" value="Hủy bỏ">
						  </div>
					 </div>
						                      
                     
                  </form:form>
               </div>
            </div>
         </div>
      </main>
      <c:remove var="successMessage" scope="session" />
  	  <c:remove var="errorMessage" scope="session" />
      <!-- FOOTER FRAGMENT -->
      <jsp:include page="./fragments/footer.fragment.jsp"/>
      
      <!-- MY OWN LIBRARY -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"></script>
		<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
		
		<script src="./public/admin/js/pages/informationPage.js"></script>