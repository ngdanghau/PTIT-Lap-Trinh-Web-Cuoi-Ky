<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tg" tagdir="/WEB-INF/tags" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Cài đặt trang - ${ SettingsData.getSite_name() }</title>
    <meta name="description" content="${ SettingsData.getSite_description() }">
      <meta name="author" content="pixelcave">
      <meta name="robots" content="noindex, nofollow">
      <meta property="og:site_name" content="${ SettingsData.getSite_name() }">
      <meta property="og:type" content="website">
      <meta property="og:title" content="${ SettingsData.getSite_name() } - ${ SettingsData.getSite_slogan() }" />
      <meta property="og:url" content="${HOMEURL}" />
      <meta property="og:description" content="${ SettingsData.getSite_description() }" />
      <base href="${APPURL }/"/>
      <link rel="icon" href="${ SettingsData.getLogomark() != '' ? SettingsData.getLogomark() : './public/images/favicon.ico' }" type="image/x-icon">
      <link rel="shortcut icon" href="${ SettingsData.getLogomark() != '' ? SettingsData.getLogomark() : './public/images/favicon.ico' }" type="image/x-icon">
      <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap">
      <link rel="stylesheet" id="css-main" href="./public/admin/css/oneui.min.css">
</head>
<body>
<div id="page-container" class="sidebar-o sidebar-dark enable-page-overlay side-scroll page-header-fixed">
      <!-- SIDEBAR FRAGMENT -->
      <jsp:include page="./fragments/sidebar.fragment.jsp"/>
      <!-- HEADER FRAGMENT -->
      <jsp:include page="./fragments/header.fragment.jsp"/>
  <main id="main-container">
	<div class="bg-body-light">
	  <div class="content content-full">
	    <div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-sm-center py-2">
	      <div class="flex-grow-1">
	        <h1 class="h3 fw-bold mb-0">
	          Cài đặt trang
	        </h1>
	      </div>
	    </div>
	  </div>
	</div>
	<div class="content">
		 <div class="row">
		 	 <div class="col-lg-8 col-xl-7 col-md-9 col-sm-12">
			  <div class="block block-rounded">
			    <div class="block-header block-header-default">
			      <h3 class="block-title">Thông tin trang</h3>
			    </div>
			    <div class="block-content block-content-full">
			      <form action="${ADMINURL }/settings/site.htm" method="POST">			       
			         
			            <div class="mb-4">
			              <label class="col-sm-2 col-form-label text-right">Tên trang web</label>
			              <input type="text" class="form-control" id="example-text-input" name="site_name" placeholder="Tên trang web" value="${settings.site_name }" required>
			            </div>
			            <div class="mb-4">
			              <label class="col-sm-2 col-form-label text-right">Slogan web</label>
			              <input type="text" class="form-control" id="example-email-input" name="site_slogan" placeholder="Slogan web" value="${settings.site_slogan }" required>
			            </div>
			            <div class="mb-4">
			              <label class="col-sm-2 col-form-label text-right">Mô tả trang web </label>
			              <textarea class="form-control" id="example-textarea-input" name="site_description" rows="4" placeholder="Mô tả trang web" required>${settings.site_description }</textarea>
			            </div>
			            <div class="mb-4">
			              <label class="col-sm-2 col-form-label text-right">Từ khóa</label>
			              <textarea class="form-control" id="example-textarea-input" name="site_keywords" rows="4" placeholder="Từ khóa"  required">${settings.site_keywords }</textarea>
			            </div>
			            <div>
			            <c:if test="${success != null|| success.length == 0}">
			            <div class="alert alert-success d-flex align-items-center" role="alert">
				            <div class="flex-shrink-0">
				              <i class="fa fa-fw fa-check"></i>
				            </div>
				            <div class="flex-grow-1 ms-3">
				              <p class="mb-0">
				                Lưu thành công 
				              </p>
				            </div>
					          </div>
					     </c:if>
					          <c:if test="${error != null|| error.length == 0}">
					          <div class="alert alert-danger d-flex align-items-center justify-content-between" role="alert">
					            <div class="flex-grow-1 me-3">
					              <p class="mb-0">
					                Vui lòng không bỏ trống!
					              </p>
					            </div>
					            <div class="flex-shrink-0">
					              <i class="fa fa-fw fa-times-circle"></i>
					            </div>
					          </div>
					          </c:if>
					          <c:if test="${change != null || change.length == 0}">
					          <div class="alert alert-info d-flex align-items-center" role="alert">
						           <div class="flex-shrink-0">
						             <i class="fa fa-fw fa-info-circle"></i>
						           </div>
						           <div class="flex-grow-1 ms-3">
						             <p class="mb-0">
						               Không có thông tin nào được thay đổi
						             </p>
						           </div>
						         </div>
					          </c:if>
			            </div>
			        <button type="submit" class="btn btn-success text-right">Lưu</button>
			        
			        
			        
			      </form>
			    </div>
			  </div>
		  	</div>
		 </div>
	</div>
  </main>
  <c:remove var="success" scope="session" />
  <c:remove var="error" scope="session" />
  <c:remove var="change" scope="session" />
  <!-- FOOTER FRAGMENT -->
      <jsp:include page="./fragments/footer.fragment.jsp"/>
      

</div>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script src="./public/admin/js/oneui.app.min.js"></script>
		<script src="./public/admin/js/pages/core.js"></script>
		
  </body>
</html>