

// Skills Animate Width
var headerText = "Environment & Data Enthusiast";
var delayTime = 200;
var header = document.getElementById("typing-header");
var i = 0;
var hasTyped = false; // Variable to track if the animation has already played

function typeWriter() {
  if (i < headerText.length) {
    header.innerHTML += headerText.charAt(i);
    i++;
    setTimeout(typeWriter, delayTime);
  } else if (!hasTyped) { // Check if the text has not been typed out before
    hasTyped = true; // Set the flag to true
  } else {
    // Do nothing - the text has already been typed out and should not be cleared
  }
}

typeWriter();





             
