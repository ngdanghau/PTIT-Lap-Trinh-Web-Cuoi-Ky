<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<div class="single-component single-component-comment">
                                                <div id="comments" class="comments-area single-section single-component">
                                                   <h2 class="comments-title single-heading">
                                                      <span>
                                                      0	Bình luận	</span>
                                                   </h2>
                                                   <ol class="commentlist"></ol>
                                                   <div id="respond" class="comment-respond">
                                                      <h3 id="reply-title" class="comment-reply-title single-heading"><span>Trả lời</span>
                                                         <small>
                                                         <a rel="nofollow" id="cancel-comment-reply-link" href="${APPURL}/article/${ post.id }/${ post.post_slug }.htm#respond" style="display:none;">Hủy</a>
                                                         </small>
                                                      </h3>
                                                      <form action="${APPURL}/article/${ post.id }/${ post.post_slug }.htm#respond" method="post" id="commentform" class="comment-form js-ajax-form">
                                                         <input type="hidden" name="action" value="comment">
                                                         <p class="comment-form-comment">
                                                            <textarea id="comment" name="comment" cols="45" rows="8" required aria-required="true" placeholder="viết bình luận..."></textarea>
                                                         </p>
                                                         <p class="comment-form-author">
                                                            <input id="author" name="author" type="text" required value="" size="30" placeholder="Name">
                                                         </p>
                                                         <p class="comment-form-email">
                                                            <input id="email" name="email" type="email" required value="" size="30" placeholder="Email">
                                                         </p>
                                                         <div class="comment-form-recaptcha">
                                                            <input type="hidden" name="recaptcha" value="1">
                                                            <div class="mb-40 recaptcha">
                                                               <div class="g-recaptcha" data-sitekey="6Lc8NDEbAAAAAHMseX5cELt00_rVpWnsQXrReuPm"></div>
                                                               <div class="recaptcha-error"></div>
                                                            </div>
                                                         </div>
                                                         <p class="form-submit">
                                                            <input name="submit" type="submit" id="submit" class="submit" value="Phản hồi" />
                                                            <input type='hidden' name='comment_post_id' value='${ post.id }' id='comment_post_id' />
                                                            <input type='hidden' name='comment_parent' id='comment_parent' value='0' />
                                                         </p>
                                                      </form>
                                                   </div>
                                                </div>
                                             </div>