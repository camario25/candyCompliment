console.log("Hello");

let r = 0;
let color = 0;

//let valEndpoint = 'http://localhost:3000/compliments.json';
let backgroundColors = ["#ff0134", "#ffbf02", "#e790e7", "#0dd2ab", "#9865ff"];

$('#next-compliment').on('click', function (e){
 e.preventDefault();
 $.ajax({
   method: "GET",
   url: 'http://localhost:3000/compliments.json',
   success: onSuccess,
   error: displayErrorMsg
 });
 backColorChange();
});

function onSuccess(json) {
$("ul").empty();
let rand = Math.floor(Math.random() * json.length);
if(rand === r){
 while(rand === r){
   rand = Math.floor(Math.random() * json.length);
 }
}
r = rand;
$("p").html(json[r].text);
}

function displayErrorMsg () {
 alert("There was an error, please refresh and try again");
}
function backColorChange() {
 color++;
 if(color === backgroundColors.length) {
   color = 0;
 }
 $('html *').css("background-color", backgroundColors[color]);

}
