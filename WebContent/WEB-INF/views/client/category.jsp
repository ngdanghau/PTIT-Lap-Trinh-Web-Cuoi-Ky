<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<!DOCTYPE html>
<html lang="vi" class="no-js">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="Tổng hợp sự kiện tin tức thế giới, biển đông, quốc tế mới nhất, nhanh nhất liên tục trong ngày" />
      <script>(function(html){html.className = html.className.replace(/\bno-js\b/,'js')})(document.documentElement);</script>
      <title>Thế Giới &#8211; Times Writer</title>
      <base href="${APPURL}/" />
      <link rel='dns-prefetch' href='//fonts.googleapis.com' />
      <link rel="icon" href="https://timeswriter.xyz/assets/images/favicon.ico" type="image/x-icon">
      <link rel="shortcut icon" href="https://timeswriter.xyz/assets/images/favicon.ico" type="image/x-icon">
      <link href='https://fonts.gstatic.com' crossorigin rel='preconnect' />
      <link rel='stylesheet' id='wi-fonts-css' href='https://fonts.googleapis.com/css?family=Libre+Franklin%3A400%2C400italic%2C900%7CTinos%3A400%2C400italic%2C700%7CLora%3A400&#038;display=swap&#038;ver=4.6.7.1' media='all' />
      <link rel='stylesheet' href="<c:url value='./public/client/style.min.css'/>"/>
      <link rel='stylesheet' href="<c:url value='./public/client/style.css'/>"/>
      <script src="<c:url value='./public/client/vendor/jquery/jquery.min.js' />"></script>
      <script src="<c:url value='./public/client/vendor/jquery/jquery-migrate.min.js' />"></script>
   </head>
   <body class="home blog theme-fox woocommerce-no-js has-sidebar sidebar-right layout-wide style--dropcap-default dropcap-style-default style--dropcap-font-heading style--tag-plain style--list-widget-1 style--tagcloud-1 style--blockquote-no-icon style--single-heading-border_top style--link-2 elementor-default elementor-kit-6">
      <div id="wi-all" class="fox-outer-wrapper fox-all wi-all">
      <div id="wi-wrapper" class="fox-wrapper wi-wrapper">
      
      <div class="wi-container">
      <!-- HEADER FRAGMENT -->
      <jsp:include page="./fragments/header.fragment.jsp"/>
      
      <jsp:include page="./fragments/logo.fragment.jsp"/>
      
      <div id="wi-main" class="wi-main fox-main">
      <div id="titlebar" class="headline wi-titlebar post-header align-left">
         <div class="container">
            <div class="title-area">
               <h1 class="archive-title">
                  <span>
                  ${ category.name }
                  </span>
               </h1>
               <div class="page-subtitle archive-description">
                  <p>${ category.description }</p>
               </div>
            </div>
         </div>
      </div>
      <div class="toparea">
      <div class="container">
         <div class="blog-container blog-container-vertical">
            <div class="wi-blog fox-blog blog-vertical">
            
            <!-- SHOW OFF ARTICLE -->
            <c:forEach var="element" items="${ categoryPost }" begin="0" end="0">
            	<article class="wi-post post-item post-vertical post-thumbnail-align-left  post type-post status-publish format-standard has-post-thumbnail hentry category-books category-opinion tag-facebook tag-magazine tag-politics tag-travel tag-wordpress">
                  <div class="post-item-inner vertical-inner post-vertical-inner">
                     <figure class="wi-thumbnail fox-thumbnail post-item-thumbnail fox-figure  vertical-thumbnail thumbnail-acute  hover-none thumbnail-loading effect-fade">
                        <div class="thumbnail-inner">
                           <a href="${APPURL}/article/${element.id}/${element.post_slug}.htm" class="post-link">
                           <span class="image-element">
                           <img width="1024" height="695" class="attachment-large size-large" alt="" loading="lazy" srcset="${element.media }" />
                           </span>
                           </a>
                        </div>
                     </figure>
                     <div class="post-body post-item-body vertical-body post-vertical-body">
                        <div class="post-body-inner">
                           <div class="post-item-header">
                              <div class="entry-categories meta-categories categories-plain standalone-categories post-header-section">
                                 <a href="${APPURL }/category/${category.slug}.htm" rel="tag">${ category.name }</a>
                              </div>
                              <h2 class="post-item-title wi-post-title fox-post-title post-header-section post-vertical-title size-large">
                                 <a href="${APPURL}/article/${element.id}/${element.post_slug}.htm" rel="bookmark">
                                 	${ element.title }
                                 </a>
                              </h2>
                           </div>
                           <div class="post-item-excerpt entry-excerpt excerpt-size-medium post-vertical-content">
                              <p></p>
                           </div>
                           <div class="post-item-meta wi-meta fox-meta post-header-section ">
                              <div class="entry-date meta-time machine-time time-short">
                                 <time class="published"><fmt:formatDate value="${element.modified_at}" pattern="dd-MM-yyyy"/></time>
                              </div>
                           </div>
                        </div>
                     </div>
               </article>
            </c:forEach>
               
               
               
               </div>
            </div>
         </div>
      </div>
      <div class="wi-content">
      <div class="container">
      <div class="content-area primary" id="primary" role="main">
         <div class="theiaStickySidebar">
            <div class="blog-container blog-container-list">
               <div class="wi-blog fox-blog blog-list v-spacing-small blog-card-has-shadow">
               
               <c:forEach var="element" items="${ categoryPost }" begin="0" end="5">
               		<article class="wi-post post-item post-list post-thumbnail-align-left post-valign-top list-mobile-layout-list  post type-post status-publish format-standard has-post-thumbnail hentry category-books category-opinion tag-facebook tag-magazine tag-politics tag-travel tag-wordpress">
                     <div class="post-list-sep" style="border-color:#eaeaea"></div>
                     <div class="post-item-inner list-inner post-list-inner">
                        <figure class="wi-thumbnail fox-thumbnail post-item-thumbnail fox-figure  list-thumbnail thumbnail-acute  hover-none thumbnail-loading effect-fade" style="width:240px">
                           <div class="thumbnail-inner">
                              <a href="${APPURL}/article/${element.id}/${element.post_slug}.htm" class="post-link">
                              <span class="image-element">
                              <img width="480" height="384" class="attachment-thumbnail-medium size-thumbnail-medium" alt="" loading="lazy" srcset="${element.media }" />
                              </span>
                              </a>
                           </div>
                        </figure>
                        <div class="post-body post-item-body list-body post-list-body">
                           <div class="post-body-inner">
                              <div class="post-item-header">
                                 <div class="entry-categories meta-categories categories-plain standalone-categories post-header-section">
                                    <a href="${ APPURL }/category/${category.slug}.htm" rel="tag"> ${ category.name }</a>
                                 </div>
                                 <h2 class="post-item-title wi-post-title fox-post-title post-header-section size-normal">
                                    <a href="${APPURL}/article/${element.id}/${element.post_slug}.htm" rel="bookmark">
                                    	${ element.title } </a>
                                 </h2>
                              </div>
                              <div class="post-item-excerpt entry-excerpt excerpt-size-normal">
                                 <p> ${ element.excerpt} </p>
                              </div>
                              <div class="post-item-meta wi-meta fox-meta post-header-section ">
                                 <div class="entry-date meta-time machine-time time-short">
                                    <time class="published"><fmt:formatDate value="${element.modified_at}" pattern="dd-MM-yyyy"/></time>	
                                 </div>
                              </div>
                           </div>
                        </div>
                  </article>
               </c:forEach>
                  
                  
                  
                  
                </div>
					<div class="wi-pagination fox-pagination font-heading pagination-3">
					   <div class="pagination-inner">
					      <span aria-current="page" class="page-numbers current"><span>1</span></span>
					      <a class="page-numbers" href="/category/the-gioi?page=2"><span>2</span></a>
					      <a class="page-numbers" href="/category/the-gioi?page=3"><span>3</span></a>
					      <a class="next page-numbers" href="/category/the-gioi?page=2"><span>Tiến</span></a>
					      <a class="next page-numbers" href="/category/the-gioi?page=13"><span>Cuối</span></a>
					   </div>
					</div>
					</div>
					</div>
					</div>
                  
                  <!-- SIDE BAR FRAGMENT -->
                  <jsp:include page="./fragments/sidebar.fragment.jsp"/>
                  
                   </div>
                  </div>
               </div>
               <!-- FOOTER FRAGMENT -->
               <jsp:include page="./fragments/footer.fragment.jsp"/>
            </div>
            <div class="wrapper-bg-element"></div>
            <div class="wrapper-border-top hand-border-h wrapper-border"></div>
            <div class="wrapper-border-bottom hand-border-h wrapper-border"></div>
            <div class="wrapper-border-left hand-border-v wrapper-border"></div>
            <div class="wrapper-border-right hand-border-v wrapper-border"></div>
         </div>
      </div>
     	<jsp:include page="./fragments/mobilenav.fragment.jsp"/>
      <div id="offcanvas-bg" class="offcanvas-bg"></div>
      <div class="offcanvas-overlay" id="offcanvas-overlay"></div>
      <div id="backtotop" class="backtotop fox-backtotop scrollup backtotop-circle backtotop-icon">
         <span class="btt-icon"><i class="feather-chevrons-up"></i></span>
      </div>
      <script id='wi-main-js-extra'>
         var WITHEMES = {"enable_sticky_sidebar":"","enable_sticky_header":"1","tablet_breakpoint":"840","enable_lightbox":"1"};
      </script>
      <script src="<c:url value='./public/client/js/theme.min.js' />"></script>
      <script>
         (function($){
            $("body").on("submit", ".mc4wp-form", function(){
               $form = $(this);
               $form.find(".mc4wp-success").html("<p>Đang thực hiện....</p>");
               $form.find("input#submit").prop('disabled', true);
               $.ajax({
                  url: $form.attr("action"),
                  type: $form.attr("method"),
                  dataType: 'jsonp',
                  data: $form.serialize(),
                  error: function() {
                     $form.find("input#submit").prop('disabled', false);
                     $form.find(".mc4wp-success").html("<p>Oops! Đã xảy ra lỗi. Vui lòng thử lại sau!</p>");
                  },
                  success: function(resp) {
                     if (typeof resp.redirect === "string") {
                           window.location.href = resp.redirect;
                     } else if (typeof resp.msg === "string") {
                           $form.find("input#submit").prop('disabled', false);
                           $form.find(".mc4wp-success").html(resp.msg);
                     } else {
                           $form.find("input#submit").prop('disabled', false);
                           $form.find(".mc4wp-success").html("<p>Oops! Đã xảy ra lỗi. Vui lòng thử lại sau!</p>");
                     }
                  }
               });
               return false;
            })
         })(jQuery);
      </script> <script>
         (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
         (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
         m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
         })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
         
         ga('create', 'UA-199495229-1', 'auto');
         ga('send', 'pageview');
      </script>
   </body>
</html>