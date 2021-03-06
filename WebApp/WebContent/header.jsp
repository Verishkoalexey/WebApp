<%@page import="utils.AppConstants"%>
<%@page import="model.User" %>
 <!--  https://codepen.io/artyom-ivanov/pen/awyyzv -->
<header>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/menu.css" />
    <h1>This is a header title</h1>
    <h3>Here you are, scroll down.</h3>
    <div class="back"></div>
<nav>
  <a href="#">About</a>
  <a href="#">Works</a>
  <a href="#">Partners</a>
  <a href="#">Price>
  <a href="#">Contacts</a>
  <%
  	User user = (User) session.getAttribute(AppConstants.LOGGED_USER); 
  	if(user != null){
  		if(user.getRole().getName().equals("ADMIN")|| user.getRole().getName().equals("SU")){ %>
  					<a href="admin">ADMIN</a>
  	<%}else if(user.getRole().getName().equals("GENERAL_USER")){%>
  		<a href="products">PRODUCTS</a>	
  	<%}} %>
  
  
    
</nav>

<!-- Unsplash copyright -->
<a class="thx" style="background-color:black;color:white;text-decoration:none;padding:4px 6px;font-family:-apple-system, BlinkMacSystemFont, &quot;San Francisco&quot;, &quot;Helvetica Neue&quot;, Helvetica, Ubuntu, Roboto, Noto, &quot;Segoe UI&quot;, Arial, sans-serif;font-size:12px;font-weight:bold;line-height:1.2;display:inline-block;border-radius:3px;" href="http://unsplash.com/@oldskool2016?utm_campaign=photographer-credit" target="_blank" rel="noopener noreferrer" title="Download free do whatever you want high-resolution photos from paul morris"><span style="display:inline-block;padding:2px 3px;"><svg xmlns="http://www.w3.org/2000/svg" style="height:12px;width:auto;position:relative;vertical-align:middle;top:-1px;fill:white;" viewBox="0 0 32 32"><title></title><path d="M20.8 18.1c0 2.7-2.2 4.8-4.8 4.8s-4.8-2.1-4.8-4.8c0-2.7 2.2-4.8 4.8-4.8 2.7.1 4.8 2.2 4.8 4.8zm11.2-7.4v14.9c0 2.3-1.9 4.3-4.3 4.3h-23.4c-2.4 0-4.3-1.9-4.3-4.3v-15c0-2.3 1.9-4.3 4.3-4.3h3.7l.8-2.3c.4-1.1 1.7-2 2.9-2h8.6c1.2 0 2.5.9 2.9 2l.8 2.4h3.7c2.4 0 4.3 1.9 4.3 4.3zm-8.6 7.5c0-4.1-3.3-7.5-7.5-7.5-4.1 0-7.5 3.4-7.5 7.5s3.3 7.5 7.5 7.5c4.2-.1 7.5-3.4 7.5-7.5z"></path></svg></span><span style="display:inline-block;padding:2px 3px;">paul morris</span></a>
  </header>