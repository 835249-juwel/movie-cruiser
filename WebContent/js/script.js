function validateMovieForm() {
    var title = document.forms["movieForm"]["title"].value;
    if (title == "") {
        alert("Title is required.");
        return false;
    } else if (title.length < 2 || title.length > 100) {
        alert("Title should have 2 to 100 characters.");
        return false;
    } else {
    }

    var boxOffice = document.forms["movieForm"]["boxOffice"].value;
    if (boxOffice == "") {
        alert("Box Office is required.");
        return false;
    } else if (isNaN(boxOffice)) {
        alert("Box Office has to be a number.");
        return false;
    } else {
    }

    var dateOfLaunch = document.forms["movieForm"]["dateOfLaunch"].value;
    if (dateOfLaunch == "") {
        alert("Date of Launch is requried");
        return false;
    } else {
    }

    var genre = document.forms["movieForm"]["genre"].value;
    if (genre == "") {
        alert("Select one genre");
        return false;
    } else {
    }
}
