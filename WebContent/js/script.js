function movieValidation() {
    var title = document.forms["validation"]["title"].value;
    if (title == "") {
        alert("Title is required.");
        return false;
    } else if (title.length < 2 || title.length > 100) {
        alert("Title should have 2 to 100 characters.");
        return false;
    } else {
    }

    var boxOffice = document.forms["validation"]["boxOffice"].value;
    if (boxOffice == "") {
        alert("Box Office is required.");
        return false;
    } else if (isNaN(boxOffice)) {
        alert("Box Office has to be a number.");
        return false;
    } else {
    }

    var dateOfLaunch = document.forms["validation"]["dateOfLaunch"].value;
    if (dateOfLaunch == "") {
        alert("Date of Launch is requried");
        return false;
    } else {
    }

    var genre = document.forms["validation"]["genre"].value;
    if (genre == "") {
        alert("Select one genre");
        return false;
    } else {
    }
}
