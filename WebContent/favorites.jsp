<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Favorites</title>
<link rel="shortcut icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header>
    <h2 class="heading">Movie Cruiser</h2>
    <img src="images\logo.png" alt="Logo" width=60 height=60 /> <nav> <a class="movie"
        href="ShowMovieListCustomer">Movies</a> <a class="favorites" href="ShowFavorite">Favorites</a>
    </nav> </header>
    <c:set var="favorite" value="${favorite}"></c:set>
    <table cellspacing="10">
        <tr>
            <td><h1>Favorites</h1></td>
        </tr>
        <tr>
            <td colspan="5"><c:if test="${removeFavoriteStatus==true }">
                    <p>Movie removed from Favorites successfully</p>
                </c:if></td>
        </tr>
        <col width="250" />

        <tr>
            <th class="title"><label>Title</label></th>
            <th class="boxOffice"><label>Box Office</label></th>
            <th align="center"><label>Genre</label></th>
        </tr>
        <c:forEach items="${movieList}" var="movieList">
            <tr>
                <td class="title">${movieList.getTitle()}</td>
                <td class="boxOffice">$ ${movieList.getBoxOffice()}</td>
                <td align="center">${movieList.getGenre()}</td>
                <td align="center"><a href="RemoveFavorite?movieId=${movieList.getMovieId()}">Remove</a></td>
            </tr>
        </c:forEach>

        <tr>
            <td><br /></td>
        </tr>
        <tr>
            <th align="left">No. of Favorites :${favorite.getNoOfFavorites()}</th>
        </tr>
    </table>
    <footer>
    <p class="footer">Copyright&nbsp;&copy;&nbsp;2019</p>
    </footer>
</body>
</html>
