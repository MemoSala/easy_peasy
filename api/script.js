var video = document.getElementsByClassName('video_Mo');
var button = document.getElementsByClassName('button');
var exit = document.getElementsByClassName('exit');

for (let index = 0; index < button.length; index++) {
    button[index].addEventListener("click", () => {
        video[index].style = "display: block;";
    });
    exit[index].addEventListener("click", () => {
        video[index].style = "display: none;";
    });
}

