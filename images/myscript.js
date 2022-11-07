
function changeImage() {
var image=document.getElementById("img1");
if(image.src.match("img1.png")){
    image.src="img2.jpg";
}
else if(image.src.match("img2.jpg")){
    image.src="img3.png";
}
else if(image.src.match("img3.png")){
    image.src="img1.png"
}

}

function change1(){
    var image=document.getElementById("img1");
    image.src="img1.png"
}

function change2(){
    var image=document.getElementById("img1");
    image.src="img2.jpg"
}

function change3(){
    var image=document.getElementById("img1");
    image.src="img3.png"

    var button=document.getElementById("button3")
   

}

function RickRoll(){
    
    location.href="redirect.html"
}

function myFunction(){
    document.getElementById("myDropdown").classList.toggle("show")

}

window.onclick=function(event){
    if(!event.target.matches('.b1')){
        var dropdowns=
        document.getElementById("dropdown-content");
        var i;
        for(i=0;i<dropdowns.lenght;++i){
            var openDropdown=dropdowns[i];
            if(openDropdown.classList.contains("show")){
                openDropdown.classList.remove("show")
            }
        }
    }
}