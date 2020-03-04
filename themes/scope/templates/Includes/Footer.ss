
<footer class="footer" role="contentinfo">
    <div class="footer__container container <% if $SiteConfig.FacebookLink || $SiteConfig.TwitterLink || $SiteConfig.VimeoLink || $SiteConfig.YouTubeLink || $SiteConfig.InstagramLink || $SiteConfig.LinkedInLink || $SiteConfig.PinterestLink || $SiteConfig.FlickrLink %>footer__container--with-social<% end_if %>">

        <div class="row">
        <div class="footer__info">
            <% if $SiteConfig.FooterLogo %>
                <div class="footer__logo">
                    <img class="lazyload" data-src="$SiteConfig.FooterLogo.URL" alt="$SiteConfig.Title Logo">
                </div>
            <% else_if $SiteConfig.DisableDivisionBranding %>
                <a href="http://uiowa.edu" class="footer__logo"><img class="lazyload" data-src="{$ThemeDir}/dist/images/ui-logo-footer.png" alt="The University of Iowa"></a>
            <% else %>
                <a href="http://studentlife.uiowa.edu" class="footer__logo"><img class="lazyload" width="300" height="81
            " data-src="{$ThemeDir}/dist/images/dosl-uiowa.png" alt="Division Of Student Life"></a>
            <% end_if %>
            <% if $SiteConfig.GroupSummary %>
                <div class="footer__summary">$SiteConfig.GroupSummary</div>
            <% else_if $SiteConfig.DisableDivisionBranding %>
                <div class="footer__summary"><p>In pursuing its missions of teaching, research, and service, the University seeks to advance scholarly and creative endeavor through leading-edge research and artistic production; to use this research and creativity to enhance undergraduate, graduate, and professional education, health care, and other services provided to the people of Iowa, the nation, and the world; and to educate students for success and personal fulfillment in a diverse world.</p></div>
            <% else_if $SiteConfig.Tagline %>
                <div class="footer__summary"><p>$SiteConfig.Tagline</p></div>
            <% else %>
                <div class="footer__summary"><p>The Division of Student Life fosters student success by creating and promoting inclusive educationally purposeful services and activities within and beyond the classroom.</p></div>
            <% end_if %>

            <div class="footer__address" itemscope itemtype="http://schema.org/PostalAddress">
                <% with $SiteConfig %>
                <p>
                    <% if $Address1 || $PhoneNumber || $PhoneNumberAlt || $Fax || $EmailAddress %>
                        $Title<br />
                        <span itemprop="streetAddress">$Address1</span>
                        <% if $City %><br /><span itemprop="addressLocality">$City</span><% end_if %><% if $State %>, <span itemprop="addressRegion">$State</span><% end_if %><% if $Zipcode %> <span itemprop="postalCode">$Zipcode</span><% end_if %><br />
                        <% if $PhoneNumber %>
                            <br /><% if $PhoneLabel %>$PhoneLabel <% end_if %><span itemprop="telephone">$PhoneNumber</span>
                        <% end_if %>
                        <% if $PhoneNumberAlt %>
                            <br /><% if $PhoneLabelAlt %>$PhoneLabelAlt <% end_if %>$PhoneNumberAlt
                        <% end_if %>
                        <% if $Fax %>
                            <br />Fax: <span itemprop="faxNumber">$Fax</span>
                        <% end_if %>
                        <% if $EmailAddress %>
                            <br /><a href="mailto:$EmailAddress"><span itemprop="email">$EmailAddress</span></a>
                        <% end_if %>
                    <% end_if %>
                </p>
                <% end_with %>
            </div>
        </div>
        <div class="footer__navigation <% if $SiteConfig.ButtonUrlOne || $SiteConfig.ButtonUrlTwo || $SiteConfig.ButtonUrlThree %>footer__navigation--with-buttons <% end_if %>">
            <div class="">
                <h3 class="footer__heading">Quick Links</h3>
            </div>
            <div class="footer__links">
                <ul class="clearfix">
                    <% loop Menu(1) %>
                        <li><a href="$Link">$MenuTitle</a></li>
                    <% end_loop %>
                </ul>
            </div>

            <% if $$SiteConfig.ButtonUrlOne || $SiteConfig.ButtonUrlTwo || $SiteConfig.ButtonUrlThree %>

                <div class="footer__buttons">
                    <% if $SiteConfig.ButtonUrlOne %>
                        <a href="$SiteConfig.ButtonUrlOne" class="footer__give" target="_blank">$SiteConfig.ButtonTextOne</a>
                    <% end_if %>
                    <% if $SiteConfig.ButtonUrlTwo %>
                        <a href="$SiteConfig.ButtonUrlTwo" class="footer__give" target="_blank">$SiteConfig.ButtonTextTwo</a>
                    <% end_if %>
                    <% if $SiteConfig.ButtonUrlThree %>
                        <a href="$SiteConfig.ButtonUrlThree" class="footer__give" target="_blank">$SiteConfig.ButtonTextThree</a>
                    <% end_if %>
                </div>
            <% end_if %>
        </div>

        <% if $SiteConfig.FacebookLink || $SiteConfig.TwitterLink || $SiteConfig.VimeoLink || $SiteConfig.YouTubeLink || $SiteConfig.InstagramLink || $SiteConfig.LinkedInLink || $SiteConfig.PinterestLink || $SiteConfig.FlickrLink %>
            <div class="footer__socialmedia" itemscope itemtype="http://schema.org/Organization">
                <link itemprop="url" href="$AbsoluteBaseURL">
                <h3 class="footer__heading">Social Media</h3>
                <ul class="">
                    <% if $SiteConfig.FacebookLink %>
                        <li><a href="$SiteConfig.FacebookLink" target="_blank" class="footer__facebook" itemprop="sameAs">Facebook</a></li>
                    <% end_if %>
                    <% if $SiteConfig.TwitterLink %>
                        <li><a href="$SiteConfig.TwitterLink" target="_blank" class="footer__twitter" itemprop="sameAs">Twitter</a></li>
                    <% end_if %>
                    <% if $SiteConfig.VimeoLink %>
                        <li><a href="$SiteConfig.VimeoLink" target="_blank" class="footer__vimeo" itemprop="sameAs">Vimeo</li>
                    <% end_if %>
                    <% if $SiteConfig.YouTubeLink %>
                        <li><a href="$SiteConfig.YouTubeLink" target="_blank" class="footer__youtube" itemprop="sameAs">Youtube</a></li>
                    <% end_if %>
                    <% if $SiteConfig.InstagramLink %>
                        <li><a href="$SiteConfig.InstagramLink" target="_blank" class="footer__instagram" itemprop="sameAs">Instagram</a></li>
                    <% end_if %>
                    <% if $SiteConfig.LinkedInLink %>
                        <li><a href="$SiteConfig.LinkedInLink" target="_blank" class="footer__linkedin" itemprop="sameAs">LinkedIn</a></li>
                    <% end_if %>
                    <% if $SiteConfig.PinterestLink %>
                        <li><a href="$SiteConfig.PinterestLink" target="_blank" class="footer__pinterest" itemprop="sameAs">Pinterest</a></li>
                    <% end_if %>
                    <% if $SiteConfig.FlickrLink %>
                        <li><a href="$SiteConfig.FlickrLink" target="_blank" class="footer__flickr" itemprop="sameAs">Flickr</a></li>
                    <% end_if %>
                    <% if $SiteConfig.Github %>
                        <li><a href="$SiteConfig.Github" target="_blank" class="footer__github" itemprop="sameAs">Github</a></li>
                    <% end_if %>
                    <% if $SiteConfig.Snapchat %>
                        <li><a href="https://www.snapchat.com/add/$SiteConfig.Snapchat" target="_blank" class="footer__snapchat" itemprop="sameAs">Snapchat</a></li>
                    <% end_if %>
                </ul>
                <% if $SiteConfig.Disclaimer %>
                    <div class="footer__disclaimer">
                        $SiteConfig.Disclaimer
                    </div>
                <% end_if %>
            </div>
        <% end_if %>
        </div>
    </div>
    <% include FooterCopyright %>
</footer>
