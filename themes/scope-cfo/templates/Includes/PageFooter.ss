

<div class="row gray collapse social-blog">

	<div class="large-6 large-push-6 columns">
		<div class="row">
			<% with Page("blog") %>
				<% loop $Entries('2') %>

					<div class="large-6 columns">
						<div class="blogsnippit">
							<h5 class="intro">From the Blog</h5>
							<h3 class="title"><a href="$Link">$Title</a></h3>
							<p>$Content.LimitCharacters(180)</p>
							<a href="$Link" class="anchor">read more</a>
						</div>
					</div>
				<% end_loop %>
			<% end_with %>
		</div>
	</div>
	<div class="large-6 large-pull-6 columns white">
		<% include FBPage %>
	</div>



</div>