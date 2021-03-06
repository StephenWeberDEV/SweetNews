<%@include file="header.jsp" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.sn.database.objects.Article"%>


<%-- <%@include file="sidebar.jsp" %> --%>
      <div class="mdl-layout__drawer mdl-layout--small-screen-only">
        <nav class="mdl-navigation mdl-typography--body-1-force-preferred-font"><a class="mdl-navigation__link" href="index.html">Home</a><a class="mdl-navigation__link" href="portfolio.html">Portfolio</a><a class="mdl-navigation__link" href="about.html">About</a><a class="mdl-navigation__link" href="contact.html">Contact</a>
        </nav>
      </div>
      <main class="mdl-layout__content">
        <div class="site-content">
          <div class="container">
			<section class="section--center mdl-grid site-max-width">
				<div class="section--center mdl-grid site-max-width" style="width:1000px;margin-bottom:-20px;">
					<h2 style="font-size:30px;">Tech</h2>
				</div>
				<br/>
			    <div class="mdl-cell mdl-card mdl-shadow--4dp portfolio-card">
			        <div class="mdl-card__media">
			            <a href="https://thenextweb.com/microsoft/2017/04/22/microsoft-needs-change-customer-perceptions-windows-take-chromeos/">
			            	<img class="article-image" src="https://cdn2.tnwcdn.com/wp-content/blogs.dir/1/files/2017/04/windows-10-redmond.jpg" border="0" alt="" width="284px">
		            	</a>
			        </div>
			        <div class="mdl-card__title">
			            <h2 class="mdl-card__title-text">Microsoft needs to change customer perceptions of Windows to take on ChromeOS</h2>
			        </div>
			        <div class="mdl-card__supporting-text">
			            Earlier today, Windows Central leaked a document detailing Microsoft's grand plan to take on the Chromebook. The company is reportedly releasing a variant of its main OS called Windows ...
			        </div>
			    </div>
			    <div class="mdl-cell mdl-card mdl-shadow--4dp portfolio-card">
			        <div class="mdl-card__media">
			            <img class="article-image" src="https://cdn3.tnwcdn.com/wp-content/blogs.dir/1/files/2017/04/ou5fXgO.jpg" border="0" alt="">
			        </div>
			        <div class="mdl-card__title">
			            <h2 class="mdl-card__title-text">Study to be a Cisco networking master with nine certifications for just $49</h2>
			        </div>
			        <div class="mdl-card__supporting-text">
			            If you're going to be an IT specialist, knowing all there is to know about Cisco Systems hardware and networks isn't a bad place to start. Cisco remains the preeminent tech titan ...
			        </div>
			    </div>
			    <div class="mdl-cell mdl-card mdl-shadow--4dp portfolio-card">
			        <div class="mdl-card__media">
			            <img class="article-image" src="https://cdn1.tnwcdn.com/wp-content/blogs.dir/1/files/2015/07/growth123.jpg" border="0" alt="">
			        </div>
			        <div class="mdl-card__title">
			            <h2 class="mdl-card__title-text">Fundamental growth hacking for new 'solopreneurs'</h2>
			        </div>
			        <div class="mdl-card__supporting-text">
			            Successful digital marketing and website optimization = more business. Yes, it's a fact and that's great... But what about hacking your way to growth as a new entrepreneur working ...
			        </div>
			    </div>
			</section>
			<section class="section--center mdl-grid site-max-width">
				<div class="section--center mdl-grid site-max-width" style="width:1000px;margin-bottom:-20px;">
					<h2 style="font-size:30px;">Politics</h2>
				</div>
				<br/>
				<% 
			        	ArrayList<Article> articles = (ArrayList)session.getAttribute("articles");
			         	Article article = articles.get(1); %>
			    <div class="mdl-cell mdl-card mdl-shadow--4dp portfolio-card">
			        <div class="mdl-card__media">
			            <img class="article-image" src="<%=article.getUrlToImage() %>" border="0" alt="">
			        </div>
			        <div class="mdl-card__title">
			        
			        
			            <h2 class="mdl-card__title-text"><%=article.getTitle() %></h2>
			        </div>
			        <div class="mdl-card__supporting-text">
			        	<%=article.getDescription() %>
			        </div>
			    </div>
			    <% article =articles.get(0); %>
			    <div class="mdl-cell mdl-card mdl-shadow--4dp portfolio-card">
			        <div class="mdl-card__media">
			            <img class="article-image" src="<%=article.getUrlToImage() %>" border="0" alt="">
			        </div>
			        <div class="mdl-card__title">
			            <h2 class="mdl-card__title-text"><%=article.getTitle() %></h2>
			        </div>
			        <div class="mdl-card__supporting-text">
			            <%=article.getDescription() %>
			        </div>
			    </div>
			    <% article =articles.get(3); %>
			    <div class="mdl-cell mdl-card mdl-shadow--4dp portfolio-card">
			        <div class="mdl-card__media">
			            <img class="article-image" src="<%=article.getUrlToImage()%>" border="0" alt="">
			        </div>
			        <div class="mdl-card__title">
			            <h2 class="mdl-card__title-text"><%=article.getTitle() %></h2>
			        </div>
			        <div class="mdl-card__supporting-text">
			            <%=article.getDescription() %>
			        </div>
			    </div>
			</section>
			<section class="section--center mdl-grid site-max-width">
				<div class="section--center mdl-grid site-max-width" style="width:1000px;margin-bottom:-20px;">
					<h2 style="font-size:30px;">Sports</h2>
				</div>
				<br/>
			    <div class="mdl-cell mdl-card mdl-shadow--4dp portfolio-card">
			        <div class="mdl-card__media">
			            <img class="article-image" src="http://binaryapi.ap.org/968e02aad98b444ba9c3773018df76d1/460x.jpg" border="0" alt="">
			        </div>
			        <div class="mdl-card__title">
			            <h2 class="mdl-card__title-text">Guardiola's 1st season at Man City to end without a trophy</h2>
			        </div>
			        <div class="mdl-card__supporting-text">
			        	Pep Guardiola's first season in English soccer with Manchester City will end without a trophy. He's even facing a battle just to qualify for the Champions League. Alexis Sanchez's extra-time goal earned Arsenal a 2-1 victory...
			        </div>
			    </div>
			    <div class="mdl-cell mdl-card mdl-shadow--4dp portfolio-card">
			        <div class="mdl-card__media">
			            <img class="article-image" src="http://a1.espncdn.com/combiner/i?img=%2Fphoto%2F2017%2F0422%2Fr202179_1296x729_16%2D9.jpg" border="0" alt="">
			        </div>
			        <div class="mdl-card__title">
			            <h2 class="mdl-card__title-text">Rockets look to fix first-quarter struggles</h2>
			        </div>
			        <div class="mdl-card__supporting-text">
			            Through three games, the Thunder have outscored the Rockets by 20 points in the first quarter, thanks in part to turnovers.
			        </div>
			    </div>
			    <div class="mdl-cell mdl-card mdl-shadow--4dp portfolio-card">
			        <div class="mdl-card__media">
			            <img class="article-image" src="http://a3.espncdn.com/combiner/i?img=%2Fphoto%2F2017%2F0419%2Fnfl_best_draft_1296x729.jpg" border="0" alt="">
			        </div>
			        <div class="mdl-card__title">
			            <h2 class="mdl-card__title-text">Best draft picks at each position for all 32 teams</h2>
			        </div>
			        <div class="mdl-card__supporting-text">
			            Who's the best quarterback, running back and wide receiver ever drafted by each franchise? NFL Nation takes a historical look back.
			        </div>
			    </div>
			</section>
<!-- 			<div class="homepage-footer"> -->
<!-- 			  <section class="mdl-grid site-max-width"> -->
<!-- 			      <div class="demo-card-event mdl-cell mdl-card mdl-shadow--4dp event-card portfolio-card" style="width: 1000px;height: 255px;"> -->
<!-- 			        <div class="mdl-card__title mdl-card--expand" style="margin-top: 25px;"> -->
<!-- 			        	<h2 class="mdl-card__title-text" style="margin-left: 37% !important"> Add Your Own Source! </h2> -->
<!-- 			        	<br/><br/> -->
<!-- 			       	</div> -->
<!-- 			       	<div style="margin-left: 25%"> -->
<!-- 			          	<div id="submitSourceForm" class="submitSourceContainer" style="margin-left:20%;margin-bottom:25%;margin-top:2%;"> -->
<!-- 							<form action="user" method="post"> -->
<!-- 								<input type="hidden" name="action" value="add" /> -->
<!-- 								<input type="text" name="source" placeholder="Source: AP/USA Today/etc" required />	 -->
<!-- 								<br/><br/> -->
<!-- 								<input type="text" name="category" placeholder="Category" required/> -->
<!-- 								<br/> -->
<!-- 								<br/> -->
<!-- 								<input type="text" name="url" placeholder="URL" required /> -->
<!-- 								<br/><br/> -->
<!-- 								<input type="submit" value="Submit" id="submitSource" /> -->
<!-- 							</form> -->
<!-- 						</div> -->
<!-- 			        </div> -->
<!-- 			      </div> -->
<!-- 			  </section> -->
<!-- 			</div> -->
		</div>
      </div>

<%@ include file="footer.jsp" %>