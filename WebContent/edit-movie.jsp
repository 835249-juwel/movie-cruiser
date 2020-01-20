<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Movie</title>
<link rel="shortcut icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<script src="js/script.js"></script>
</head>
<body>
    <header>
    <h2 class="heading">Movie Cruiser</h2>
    <img src="images\logo.png" alt="Logo" width=60 height=60 /> <nav> <a class="movie"
        href="ShowMovieListAdmin">Movies</a> </nav> </header>
    <form name="movieForm" method="post" action="EditMovie" onsubmit="return validateMovieForm()">
        <input type="hidden" name="movieId" value="${movieList.getMovieId()}" />
        <table class="table-row2" cellspacing="10">
            <tr>
                <td colspan="4"><h1>Edit Movie</h1></td>
            </tr>
            <tr>
                <td colspan="4"><label for="title">Title</label></td>
            </tr>
            <tr>
                <td colspan="4"><input id="title" type="text" size="90" name="title"
                    value="${movieList.getTitle()}" autocomplete="off" /><span id="terror"></span></td>
            </tr>
            <tr>
                <td colspan="4"></td>
            </tr>
            <tr>
                <td><label for="boxOffice">Gross($)</label></td>
                <td><label for="active">Active</label></td>
                <td><label for="dateOfLaunch">Date Of Launch</label></td>
                <td><label for="genre">Genre</label></td>
            </tr>
            <tr>
                <td><input id="boxOffice" type="text" name="boxOffice"
                    value="${movieList.getBoxOffice()}" autocomplete="off" /><span id="perror"></span></td>


                <td><c:choose>
                        <c:when test="${movieList.isActive()==true}">
                            <input type="radio" name="active" value="Yes" checked />Yes
                    <input type="radio" name="active" value="No" />No
                    </c:when>
                        <c:otherwise>
                            <input type="radio" name="active" value="Yes" />Yes
                    <input type="radio" name="active" value="No" checked />No      
                    </c:otherwise>
                    </c:choose></td>


                <td><f:formatDate value="${movieList.getDateOfLaunch()}" var="dateOfLaunch"
                        pattern="dd/MM/yyyy" /><input id="dateOfLaunch" type="text"
                    name="dateOfLaunch" value="${dateOfLaunch}" /><span id="derror"></span></td>
                <td><select name="genre">
                        <option value="${movieList.getGenre()}">${movieList.getGenre()}</option>
                        <option value="sciencefiction">Science Fiction</option>
                        <option value="superhero">Super hero</option>
                        <option value="romance">Romance</option>
                        <option value="comedy">Comedy</option>
                        <option value="adventure">Adventure</option>
                        <option value="thriller">Thriller</option>
                </select><span id="cerror"></span></td>
            </tr>
            <tr>
                <td colspan="4"></td>
            </tr>
            <tr>
                <td><c:choose>
                        <c:when test="${movieList.isHasTeaser()==true }">
                            <input type="checkbox" name="hasTeaser" value="Yes" checked />Has Teaser          
                    </c:when>
                        <c:otherwise>
                            <input type="checkbox" name="hasTeaser" value="No" />Has Teaser
                    </c:otherwise>
                    </c:choose></td>
            </tr>
            <tr>
                <td colspan="4"></td>
            </tr>
            <tr>
                <td colspan="4"><input class="submit" type="submit" value="Save" /></td>
            </tr>
        </table>
    </form>
    <footer>
    <p class="footer">Copyright&nbsp;&copy;&nbsp;2019</p>
    </footer>
</body>
</html>
