<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Movie List Customer</title>
<link rel="shortcut icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header>
    <h2 class="heading">Movie Cruiser</h2>
    <img src="images\logo.png" alt="Logo" width=60 height=60 /> <nav> <a class="movie"
        href="ShowMovieListCustomer">Movies</a> <a class="favorites" href="ShowFavorite">Favorites</a>
    </nav> </header>
    <table cellspacing="10">
        <tr>
            <td><h1>Movies</h1></td>
        </tr>
        <tr>
            <th colspan="3"><c:if test="${addFavoriteStatus==true }">
                    <p>Movie added to Favorite Successfully</p>
                </c:if></th>
        </tr>
        <col width="250" />
        <tr>
            <th class="title"><label>Title</label></th>
            <th class="boxOffice"><label>Box Office</label></th>
            <th align="center"><label>Genre</label></th>
            <th align="center"><label>Has Teaser</label></th>
            <th align="center">Action</th>
        </tr>
        <tr>
            <c:forEach items="${movieList}" var="movieList">
                <tr>
                    <td class="title">${movieList.getTitle()}</td>
                    <td class="boxoffice">$ ${movieList.getBoxOffice()}</td>
                    <td align="center">${movieList.getGenre()}</td>
                    <td align="center"><c:choose>
                            <c:when test="${movieList.isHasTeaser()==true }">Yes</c:when>
                            <c:otherwise>No</c:otherwise>
                        </c:choose>
                    <td align="center"><a
                        href="AddToFavorite?movieId=${movieList.getMovieId()}">Add to Favorite</a></td>
                </tr>
            </c:forEach>
        </tr>
    </table>
    <footer>
    <p class="footer">Copyright&nbsp;&copy;&nbsp;2019</p>
    </footer>
</body>
</html>
