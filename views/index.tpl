<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>{{config "String" "globaltitle" ""}}</title>
{{template "inc/meta.tpl" .}}
</head>
<body class="sticky-header">
<section> {{template "inc/left.tpl" .}}
  <!-- main content start-->
  <div class="main-content" >
    <!-- header section start-->
    <div class="header-section">
      <!--toggle button start-->
      <a class="toggle-btn"><i class="fa fa-bars"></i></a>
      <!--toggle button end-->
      <!--search start-->
      <!--search end-->
      {{template "inc/user-info.tpl" .}} </div>
    <!-- header section end-->
    <!--body wrapper start-->
    <div class="wrapper">
      <div class="row">
        <div class="jumbotron text-center" style="background-color:transparent;">
          <h2>让项目管理与OA办公更加轻便！</h2>
		<br/><br/>
			<a style="font-size:38px;" href="/user/show/{{.LoginUserid}}">开启 StarOA 之旅</a>
			<br/><br/>
			<a href="http://blog.deali.cn" target="_blank">StarBlog官网</a> &middot; <a href="https://www.cnblogs.com/deali/category/2313755.html" target="_blank">系列教程</a> &middot; <a href="https://github.com/deali-Axy" target="_blank">GitHub主页</a>
			
        </div>
      </div>
    </div>
    <!--body wrapper end-->
  </div>
  <!-- main content end-->
</section>
{{template "inc/foot.tpl" .}}
</body>
</html>
