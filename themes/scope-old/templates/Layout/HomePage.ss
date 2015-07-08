<!--test = $test-->

<% include Header %>


	
	<div class="main">

		<div id="slider">
		

		
		
			<% loop PaginatedPages %>
				
				<ul><li>
				
				<% if SoundwaveOverlay %>
					<div class="overlay"><img src="{$ThemeDir}/images/main.png"/></div>
				<% else %>
					<div class="overlay"><img src="{$ThemeDir}/images/main_nodots.png"/></div>
				<% end_if %>
				
				$Picture.SetWidth(970)
				
				<h2><a href="$Link" class="FeaturedArtist">$Artist</a></h2>
				<!--<h4>Featured Show</h4>-->
				
				
				<div class="main_info">
				
					<ul>
					
						<li>$Date.NiceUS</li>
					
					</ul>
					
					<ul>
						<li>$Venue</li>
						<li>$Time</li>
					</ul>
				
					
					<div class="clear"></div>
					
					<% if $BuyTicketsOnlineLink %>
					
						<% if $SoldOut %>
							<p class="sold-out">This show is sold out!</p>
						<% else %>
		
						<a href="$BuyTicketsOnlineLink?camefrom=ScopeWebsiteHomePageMainFeature"><h3>Buy Tickets</h3></a>
						<% end_if %>
					
					<% end_if %>
					
					</li></ul>	
				
			<% end_loop %>
		
		</div> <!-- end slider div -->
			
		</div> <!-- end main_info div -->
	</div> <!-- end content wrapper -->

	
		<!-- PARALLAX STUFF--> 
	<div id="parallax-stuff">
		<div class="bk bk_0"></div>
		<div class="bk bk_1"></div>
		<div class="bk bk_2"></div>
		
		
		<div class="img_1"></div>
		<div class="img_2"></div> 	
	</div>
	
	<div class="contentwrapper">
	<div class="twitter">
		<a class="twitter-timeline" href="https://twitter.com/uiSCOPE" data-widget-id="379992527249494017" data-chrome="transparent">Tweets by @uiSCOPE</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

	</div>
	<!--
	<div id="twit_embed">
		
<a class="twitter-timeline" href="https://twitter.com/uiSCOPE" data-widget-id="245565029536112641">Tweets by @uiSCOPE</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
	
	</div>
	-->
	<!--[if lt IE 9]>


	<![endif]-->


<!-- 03 SHOWS SECTION -->


<div class="section" id="shows">
	<h1>Shows</h1>
	<h4><a href="{$AbsoluteBaseURL}show-archive" id="showarchive" >View Show Archive >></a></h4><br> 		
	


<% loop PaginatedPages(Date) %>   

<div class="details" >
	<div class="description">
			
		<a href="{$Link}">
			<img id="show_image" src="$Picture.SetWidth(595).URL" alt="Image representing $Artist" />
		</a>
		
		<a href="{$Link}"><h2>$Artist</h2></a>
		<h5 class="date">$Venue $Time <br>$Date.Format("l, F j")</h5>
            	<p>$Content.Summary(100)<p>
				<div class="button"><a href="$Link">See More</a></div>
	</div>
</div>
	<div class="extras">
		<ul>
			<% if SpotifyLink %>
				<!--<li class="iframe"><iframe src="$SpotifyLink" width="300" height="80" frameborder="0" allowtransparency="true"></iframe></li>-->
			<% end_if %>
			<li><div class="date">
				<ul>
					<p id="countdownText{$Pos}" style="display: inline;">Countdown to</p> 

					<li><strong><a href="$Link">$Artist</a></strong></li>

					<li>$Venue</li>
					<li>$Date.NiceUS</li>
					<% if DoorsOpenTime %>
						<li>Doors open at: $DoorsOpenTime</li>						
					<% end_if %>
					<li>Show starts at: $Time</li>
					
					<li><div id="countdown{$Pos}"></div></li>
										
					<li id="note{$Pos}"></li>
										
					<script>
					
					var timestamp = {$getTimestamp};
					ts = new Date(timestamp * 1000);
				    cd = '#countdown{$Pos}';
				    no = '#note{$Pos}';
					temp = startCountdown(ts,cd,no);
	
					if (ts < new Date()){					    
						var removeDiv = $('#countdown{$Pos}');
						removeDiv.hide();
						var removeP = $('#countdownText{$Pos}');
						removeP.hide();
					}

					</script>
				</ul>
			</div></li> <!-- end date -->
			<% if $BuyTicketsOnlineLink || $BuyTicketsInPersonLink %>
			<% if $SoldOut %>
				<p class="sold-out">This show is sold out!</p>
			<% else %>
			<li class="get_tix"><h5>Get Tickets now:</h5><div>
				<ul>
					<% if $BuyTicketsOnlineLink %>
					<a href="{$BuyTicketsOnlineLink}?camefrom=ScopeWebsiteHomePage" class="tix"><li><strong>Buy Tickets</strong><br>Online</li></a>
					<% end_if %>
					
					<% if $BuyTicketsInPersonLink %>
					<a href="{$BuyTicketsInPersonLink}"class="tix"><li><strong>Buy Tickets</strong><br>In Person</li></a>
					<% end_if %>
				</ul>
			
			
			</div></li>
			<% end_if %> <!-- end if sold out -->
			<% end_if %><!-- end buy tix -->

			<div class="clear"></div>
			
			<li><div class="get_tix"><h5>Share this event:</h5>
					<ul class="social-small">

		<li><div class="fb-like" data-href="{$AbsoluteLink}" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-font="lucida grande"></div></li>
		<!--<li><div class="fb-like" data-href="https://www.facebook.com/uiscopeproductions" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-font="lucida grande" id="scopeFacebook"></div></li>-->
		
		<li class="twitterSocial"><a href="https://twitter.com/share" class="twitter-share-button" data-lang="en" data-url="$AbsoluteLink" data-text="<% if TwitterText %>$TwitterText<% else %>Check out $Title by SCOPE Productions!<% end_if %>">Tweet</a></li>

		<% if Picture %>
		<li><a class="pin scopePinterest" href="http://pinterest.com/pin/create/button/?url={$AbsoluteLink}&media={$Picture.AbsoluteURL}&description={$Content.Summary(100)}" title="Pin It"  ><img border="0" src="//assets.pinterest.com/images/PinExt.png"  title="Pin It" /></a></li>
		<% end_if %>
		 
		<li><a href="http://www.tumblr.com/share/" class="tumblr"><img src="themes/scope-redesign/images/tumblr.png"alt="Tumblr Button"/></a></li>
		
		<!--<li><a href="http://www.tumblr.com/share/link/?url={$AbsoluteLink}" title="Share on Tumblr" class="scopeTumblr" style="display:inline-block; text-indent:-9999px; overflow:hidden; width:61px; height:20px; background:url('http://platform.tumblr.com/v1/share_2.png') top left no-repeat transparent;">Share on Tumblr</a></li>-->
		
		</ul> <!-- end ul class social small -->
		</div><!-- end get tix div --></li> <!-- end li div class get tix -->

		
		<div class="clear"></div>
		
		<li>

		<% if PhotoGallery1 %>
		<h5 class="photo-gallery-link"><a href="$PhotoGallery1.Link" class="single_image">Photo Gallery</a></h5>
			<div class="photo_gallery" id="photo_gallery{$Pos}">
				<ul>
				   <% if PhotoGallery1 %>
						<li><a class="single_image" href="{$PhotoGallery1.Link}" rel="sidebar_gallery-{$ID}"><img src="$PhotoGallery1.Link"/></a></li>
					<% end_if %>
					<% if PhotoGallery2 %>
						<li><a class="single_image" href="{$PhotoGallery2.Link}" rel="sidebar_gallery-{$ID}">$PhotoGallery2</a></li>
					<% end_if %>
					<% if PhotoGallery3 %>
						<li><a class="single_image" href="{$PhotoGallery3.Link}" rel="sidebar_gallery-{$ID}">$PhotoGallery3</a></li>
					<% end_if %>
					<% if PhotoGallery4 %>
						<li><a class="single_image" href="{$PhotoGallery4.Link}" rel="sidebar_gallery-{$ID}">$PhotoGallery4</a></li>		
					<% end_if %>
				</ul>
			</div> <!-- end photo_gallery -->
		<% end_if %>
		
		<% if PhotoGallery5 %>
			<div class="photo_gallery" id="photo_gallery{$Pos}">
				<ul>
					<% if PhotoGallery5 %>
						<li><a class="single_image" href="{$PhotoGallery5.Link}" rel="sidebar_gallery-{$ID}">$PhotoGallery5</a></li>		
					<% end_if %>
					<% if PhotoGallery6 %>
						<li><a class="single_image" href="{$PhotoGallery6.Link}" rel="sidebar_gallery-{$ID}">$PhotoGallery6</a></li>		
					<% end_if %>
					<% if PhotoGallery7 %>
						<li><a class="single_image" href="{$PhotoGallery7.Link}" rel="sidebar_gallery-{$ID}">$PhotoGallery7</a></li>		
					<% end_if %>
					<% if PhotoGallery8 %>
						<li><a class="single_image" href="{$PhotoGallery8.Link}" rel="sidebar_gallery-{$ID}">$PhotoGallery8</a></li>		
					<% end_if %>
				</ul>
			</div>	  
	  <% end_if %>
	  
	  	</li> <!-- end toggle li -->
	 
		</ul> <!-- end ul in div class extras -->
		
	</div> <!-- end extras  -->

<% end_loop %>

</div> <!-- end section shows div-->


<!-- 04 VENUES SECTION-->	

<div class="clear"></div>

<div class="section" id="venues">
	<h1>Venues</h1>
<% loop ChildrenOf(venues) %>


<div class="details"  id={$URLSegment}>
	<div class="description venue">
		
		<a href="{$Link}"><img id="venue_section" src="$Picture.URL" alt="Venue Picture"/></a>
		<a href="{$Link}"><h2>$Title</h2></a>
            	<p>$Content<p>
        <div class="button"><a href="$Link">View Full Technical Info</a></div>
	</div>
</div>
<div class="extras tech-info">
	<ul class="tech">
	
	<h5>Technical Information</h5>
	<li><div class="specs">
		<ul>
			<% if Capacity %>
				<li class="left">Capacity</li>
				<li>$Capacity</li>
				<div class="clear"></div>
			<% end_if %>				
		</ul>
	 </div></li>
	<li><div class="specs">
		<ul>
			<% if RoomDimensions %>
				<li class="left">Room Dimensions</li>
				<li>$RoomDimensions</li>
				<div class="clear"></div>
			<% end_if %>				
		  </ul>
	 </div></li>
	<li><div class="specs">
		<ul>
			<% if StageDimensions %>
				<li class="left">Stage</li>
				<li>$StageDimensions</li>
				<div class="clear"></div>
			<% end_if %>	
		  </ul>
	 </div></li>
	 <!--Not sure if they want this or not -- last venue looks really empty without it-->
	 <li><div class="specs">
	 	<ul>
			<% if Other %>
				<li class="left">Other</li>
				<li>$Other</li>
				<div class="clear"></div>
			<% end_if %>	
		</ul>
	 </div></li>
		 <div class="clear"></div>
	</ul>
</div>


<% end_loop %>


<!-- 05 ABOUT SECTION -->

		<div class="clear"></div>
	
		<div class="section" id="about">
		<h1>About</h1>
		<div class="details">
		
		<% with getAboutPage %>
			
			<div class="description">
			<h2>About Us</h2>
			$Content
			
			<h2>Contact</h2>
				<p id="contact">
					$Contact
										
				</p>
				<br>
				<p id="contact">$Contact2
				</p>
				
			</div> <!-- end description div -->
		</div> <!-- end details div -->
		
		
		<div class="extras tech-info">
					<div class="social-about">
					
					<ul class="social">
			
					<li><div class="fb-like" data-href="https://www.facebook.com/uiscopeproductions" data-send="false" data-layout="button_count" data-width="50" data-show-faces="false" data-font="lucida grande"></div></li>
					
					<li><a href="https://twitter.com/uiSCOPE" class="twitter-follow-button" data-show-count="false" data-show-screen-name="false">Follow @uiSCOPE</a></li>
		
					<!--<li><a class="pin" href="http://pinterest.com/USERNAME/"><img src="http://passets-ec.pinterest.com/images/about/buttons/pinterest-button.png" alt="Pinterest Button" width="60" height="21" alt="Follow Me on Pinterest" /></a></li>-->
			
			<li><a href="http://scopeproductions.tumblr.com/" class="tumblr"><img src="{$ThemeDir}/images/tumblr.png" alt="Tumblr Button" id="tumblr"/></a></li>
					<div class="clear"></div>
					</ul>
			
					</div>
					
				<div class="description">
				<h5>Stay updated with emails from SCOPE:</h5>
				
				<form action="http://uiowa.us2.list-manage2.com/subscribe/post?u=ecb2f1db3370a699762596aba&amp;id=9f325218d4" method="post" id="subscribe-form" name="subscribe-form" class="validate" target="_blank">
				<label for="mce-EMAIL" style="display:none;"</label><input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="email address" required="">
				<div class="clear"><input type="submit" value="Subscribe" name="subscribe" class="button"></div>
				</form>
				
				</div> <!-- end description div -->
				
		</div>					
			
		</div> <!-- end extras div -->
		
		<% end_with %>	
    <% if ChildrenOf(StaffHolder) %>
		<% include StaffHolder %>
	<% end_if %>	
		</div> <!-- end section about div -->



	</div> <!-- end content wrapper div -->



<script src="http://twitter.com/javascripts/blogger.js"></script>

<script src="https://api.twitter.com/1/statuses/user_timeline.json?screen_name=uiscope&amp;include_rts=true&amp;count=1&amp;callback=twitterCallback2"></script>
<script>
jQuery(document).ready(function() {
	jQuery('#slider').anythingSlider();
});
</script>
<!--	
<script>
					
	var timestamp = {$FeaturedPage.getTimestamp};
	ts = new Date(timestamp * 1000);
    cd = '#countdown2';
    no = '#note2';
	startCountdown(ts,cd,no);

</script>
-->		
<!--[if lt IE 9]>
   <script>
      document.createElement('footer');
   </script>
<![endif]-->
<% include Footer %>	

<!--$SplitKeywords-->
	