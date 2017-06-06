<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rodape</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<%--<link rel="stylesheet" href="css/style.css"> --%>
</head>
<body>
<footer id="rodape">
  <div class="navbar navbar-default rodape navbar-fixed-bottom">
      <div class="container">
        <div class="navbar-collapse collapse" id="footer-body">
          <ul class="nav navbar-nav">
          	<%-- Colocar links --%>
            <li><a href="#">Browse Our Library</a></li>
          </ul>
        </div>
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#footer-body">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <ul class="footer-bar-btns visible-xs">
            <li><a href="#" class="btn" title="History"><i class="fa fa-2x fa-clock-o blue-text"></i></a></li>
            <li><a href="#" class="btn" title="Favourites"><i class="fa fa-2x fa-star yellow-text"></i></a></li>
            <li><a href="#" class="btn" title="Subscriptions"><i class="fa fa-2x fa-rss-square orange-text"></i></a></li>
          </ul>
        </div>

      </div>
    </div>
  </footer>
</body>
</html>