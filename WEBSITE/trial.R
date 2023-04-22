options(scipen=10)
library(ggplot2)

csv_path = "C:\\Users\\943187\\OneDrive\\OneDrive - Seagate Technology\\Documents\\SENIOR YEAR\\FORECASTING\\RSCRIPT\\lecture4_stock_mmm.csv"

mmm_df = read.csv(csv_path)
n=length(mmm_df[,"period"])

mmm_plot = ggplot(mmm_df)
mmm_plot = mmm_plot + geom_line(aes(x=period, y= price), color="darkgrey")
mmm_plot = mmm_plot + geom_point(aes(x=period, y= price), color= "darkmagenta") 
  
  
#trend model
mmm_trend_lm = lm(price~period, mmm_df)
summary(mmm_trend_lm)

for (t in 1:n)
{
  #new column called trend_mmm
  mmm_df[t,"trend_mmm"] = -35.9234077 + 0.0114060*mmm_df[t,"period"]
}

#redidual plot 

#histogram
mmm_res_hist = ggplot(mmm_df)
mmm_res_hist = mmm_res_hist + geom_histogram(aes(x=residual_mmm), binwidth = 0.75, fill="black", color="purple")

/*
  /* style for the navigation links */
  nav ul {
    list-style: none;
    margin: 0;
    padding: 0;
  }

nav ul li {
  display: inline-block;
  margin: 0 10px;
}

nav ul li a {
  color: #000;
    text-decoration: none;
}

/* toggle the display of corresponding section when link is clicked */
  nav ul li a:hover,
nav ul li a:focus {
  color: #fff;
    background-color: #000;
}

#home:target,
#about:target,
#resume:target,
#projects:target,
#contact:target {
display: block;
}



#intro {
position: auto;
top: 0;
left: 0;
width: 10%;
height: 10%;
display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
background-color: #fff;
  }

.intro-text {
  margin-top: -100px;
}

.intro-text p {
  color: #000;
    font-size: 3rem;
  font-weight: bold;
  margin: 0;
  padding: 0;
  text-align: center;
}

.intro-text .btn {
  font-size: 1.5rem;
  margin-top: 1rem;
  padding: 1rem 2rem;
  border: 2px solid #000;
  border-radius: 3px;
  text-decoration: none;
  color: #000;
}

#pic {
position: right;
top: 0;
left: 20;
width: 10%;
height: 10%;
display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
background-color: #fff;
  }

video {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 25vh; /* 25% of viewport height */
    object-fit: cover;
  z-index: -1;
}

main {
  color:white;
}


body {
  background-color: #f1f1f0;
    font-family: Arial, sans-serif;
}

h1 {
  color: darkgreen;
  margin-top: 205px;
  line-height: 5;
  text-align: center;
  left: 10;
  right: 10;
  font-size: 25px;
}
img {
  width: 30%;
  height: auto;
  float: right;
}
home {
  position: center;
  font-size: 5px;
  color:white;
  
}
/*this is a paragraph*/
  p {
    font-size: 20px;
  }


#typing-header {

color: #fff;
  
  padding: 10px;
font-size: 24px;
text-align: center;
position: fixed;
top:50%;
left:50%;
animation: blink 2s infinite;

white-space: nowrap;

letter-spacing: 0.1em;
color: var(--yellow-color);
font-size: 28px;
font-weight: regular;
/* Ensures the typewriter cursor is hidden until animation starts */
  border-right: .11em solid var(--yellow-color); /* The typewriter cursor */
  white-space: nowrap; /* Keeps the whole word on one line */
  margin-top: -100px; /* Adds some space between the navigation and the typing header */
  
  /* The blinking cursor animation */
  animation: typing 10s steps(20) infinite;
}


/* The blinking cursor animation */
  @keyframes typing{
    from, to { border-color: transparent }
    50% { border-color: var(--yellow-color)}
  }


#resume,
#cv,
#education,
#projects {
background-color: white;
padding: 15px;
margin-bottom: 20px;
}

#resume h2,
#cv h2,
#education h2,
#projects h2 {
color: darkgreen;
margin-top: 0;
}

#resume p,
#cv p {
margin-top: 0;
}

#education ul,
#projects ul {
list-style: none;
padding: 0;
margin: 0;
}

#education li,
#projects li {
margin-bottom: 10px;
}

#projects li a {
color: darkgreen;
text-decoration: none;
}

#projects li a:hover {
text-decoration: underline;
}

/*Project text*/
  header {
    color:black;
    height: 250px;
    margin-bottom: 20px; /* Add some space between the header and the content below it */
      z-index: 2;
  }



/*Horz Header*/
  
  
  .header-link a {
    color: white;
    text-decoration: none;
    padding: 10px;
    display: inline-block;
  }


header nav ul {
  color:white;
  display: flex;
  list-style: none;
  justify-content: space-between;
  align-items: center;
  padding: 2;
  margin: 2;
}

header nav li {
  margin: 0 1em;
}

header nav a {
  color: #white;
    text-decoration: none;
  font-size: 1.4em;
  font-weight: bold;
}

/*I'm sidney and imager*/
header {
  position: relative;
  height: 250px;
}


<!---
<!DOCTYPE html>
<html lang="en" style="--yellow-color: #8bc34a;">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Portfolio</title>
  <link rel="stylesheet" href="style.css">
  <style>
      body {
        background-size: cover;
        background-position: center top;
        background-attachment: fixed;
      }
    </style>
  </head>
  
  
  <body>
    <video autoplay loop muted playsinline poster="poster.jpg" id="bg-video">
      <source src="leaf.mp4" type="video/mp4">
    </video>
    <header>
  <nav>
    <ul>
      <li><a href="#home">Home</a></li>
      <li><a href="#about">About Me</a></li>
      <li><a href="#resume">Resume</a></li>
      <li><a href="#projects">Projects</a></li>
      <li><a href="#contact">Contact</a></li>
    </ul>
  </nav>
</header>

<main>
  <section id="home">
    <h1>Welcome to my website!</h1>
    <p>This is the home section.</p>
    <section id="pic">
    <img src="Headshot.jpg" alt="My Photo">
    <div class="pic">
  </section>
  </section>

  <section id="about">
    <h2>About Me</h2>
    <p>Write a brief description about yourself and your background, skills, and experience.</p>
      <section id="about" class="header-content">
    <div>
  </section>

  <section id="resume" class="header-content">
    <div>
    <h2>Resume</h2>
    <ul>
        <li>
          <p>Download my resume <a href="resume.pdf">here</a>.</p>
        </li>
      </ul>
    </div>
  </section>
    
  
    <section id="projects">
    <div>
      <h2>Projects</h2>
      <ul>
        <li>
          <h3>Squid Games</h3>
          <p>Description of project 1.</p>
          <a href="#" class="btn">View project</a>
        </li>
        <li>
          <h3>Human Consumption</h3>
          <p>Description of project 2.</p>
          <a href="#" class="btn">View project</a>
        </li>
        <li>
          <h3>Obesity</h3>
          <p>Description of project 3.</p>
          <a href="#" class="btn">View project</a>
        </li>
      </ul>
    </div>
  </section>

  <section id="contact">
    <h2>Contact</h2>
    <p>This is the contact section.</p>
  </section>
</main>
  
  <section id="intro">
    <div class="intro-text">
      <p>type.</p>
      <a href="#projects" class="btn">View my work</a>
    </div>
  </section>
  
  <section id="pic">
    <img src="Headshot.jpg" alt="My Photo">
    <div class="pic">
      
    </div>
  </section>

  
  <section id="about" class="header-content">
    <div>
      <h2>About Me</h2>
      <p>Write a brief description about yourself and your background, skills, and experience.</p>
    </div>
  </section>

  <section id="resume" class="header-content">
    <div>
      <h2>Resume</h2>
      <ul>
        <li>
          <p>Download my resume <a href="resume.pdf">here</a>.</p>
        </li>
      </ul>
    </div>
  </section>


  <section id="projects" class="header-content">
    <div>
      <h2>Projects</h2>
      <ul>
        <li>
          <h3>Squid Games</h3>
          <p>Description of project 1.</p>
          <a href="#" class="btn">View project</a>
        </li>
        <li>
          <h3>Human Consumption</h3>
          <p>Description of project 2.</p>
          <a href="#" class="btn">View project</a>
        </li>
        <li>
          <h3>Obesity</h3>
          <p>Description of project 3.</p>
          <a href="#" class="btn">View project</a>
        </li>
      </ul>
    </div>
  </section>

  <section id="contact" class="header-content">
    <div>
      <h2>Contact Me</h2>
      <form action="send-message.php" method="post">
        <label></label>
  

  <footer>
    <p>&copy; 2023 My Portfolio. All rights reserved.</p>
  </footer>

</body>
</html>


<!DOCTYPE html>
  <html lang="en" style="--yellow-color: #8bc34a;">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initia-scale=1.0">
  <title>"C:\Users\943187\OneDrive\OneDrive - Seagate Technology\Documents\WEBSITE\web.html"</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Portfolio</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

  <header>
    <nav>
      <ul>
        <li><a href="#home">Home</a></li>
        <li><a href="#about">About Me</a></li>
        <li><a href="#resume">Resume</a></li>
        <li><a href="#projects">Projects</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>
    </nav>
    
  

  <section id="home">
    <h1>I'm Sidney Julian</h1>
  <p>My name is [your name] and I am a [your profession/field] based in [your location].</p>
  <a href="#projects" class="btn">View my work</a>
    </section>
    
    </header>
    </ul>
    </nav>
    <h2 id="typing-header"></h2>
      </header>
      </div>
      
      <section id="about">
        <h2>About Me</h2>
        <img src="Headshot.jpg" alt="My Photo" style="width: 210px; height: 200px;">
          <script src="script.js"></script>
            <p>Write a brief description about yourself and your background, skills, and experience.</p>
            </section>
            
            <section id="Resume">
              <h2>Resume</h2>
              <ul>
              <li>
              <p>Download my resume <a href="resume.pdf">here</a>.</p>
                </section>
                
                <section id="projects">
                  <h2>Projects</h2>
                  <ul>
                  <li>
                  <h3>Project 1</h3>
                  <p>Description of project 1.</p>
                  <a href="#" class="btn">View project</a>
                    </li>
                    <li>
                    <h3>Project 2</h3>
                    <p>Description of project 2.</p>
                    <a href="#" class="btn">View project</a>
                      </li>
                      <li>
                      <h3>Project 3</h3>
                      <p>Description of project 3.</p>
                      <a href="#" class="btn">View project</a>
                        </li>
                        </ul>
                        </section>
                        
                        <section id="projects">
                          <h2>Projects</h2>
                          <ul>
                          <li><a href="gameproject.html">Squid Games</a></li>
                            <li><a href="Human Consumption.pdf">Human Consumption</a></li>
                              <li><a href="Obesity.html">Project 3</a></li>
                                </ul>
                                </section>
                                
                                <section id="contact">
                                  <h2>Contact Me</h2>
                                  <form action="send-message.php" method="post">
                                    <label for="name">Name:</label>
                                      <input type="text" id="name" name="name" required>
                                        
                                        <label for="email">Email:</label>
                                          <input type="email" id="email" name="email" required>
                                            
                                            <label for="message">Message:</label>
                                              <textarea id="message" name="message" required></textarea>
                                                
                                                <button type="submit" class="btn">Send Message</button>
                                                  </form>
                                                  </section>
                                                  
                                                  <footer>
                                                  <p>&copy; 2023 My Portfolio. All rights reserved.</p>
                                                  </footer>
                                                  
                                                  </body>
                                                  </html>
                                                  
                                                  
                                                  
                                                  
                                                  
                                                  <!DOCTYPE html>
                                                  <html lang="en" style="--yellow-color: #8bc34a;">
                                                    <head>
                                                    <meta charset="UTF-8">
                                                      <meta http-equiv="X-UA-Compatible" content="IE=edge">
                                                        <meta name="viewport" content="width=device-width, initia-scale=1.0">
                                                          <title>Portfolio - S</title>
                                                          <link rel="stylesheet" type="text/css" href="style.css">
                                                            </head>
                                                            <body>
                                                            <h1>Sidney Julian</h1>
                                                            <p>Hi Garrett.</p>
                                                            <div style="display: flex; justify-content: center; align-items: center; height: auto;">
                                                              <header>
                                                              <nav>
                                                              <ul>
                                                              <li><a href="#resume">Resume</a></li>
                                                                <li><a href="#cv">CV</a></li>
                                                                  <li><a href="#education">Education</a></li>
                                                                    <li><a href="#projects">Projects</a></li>
                                                                      </ul>
                                                                      </nav>
                                                                      <h2 id="typing-header"></h2>
                                                                        </header>
                                                                        </div>
                                                                        <header class="navbar" id="navbar"></header>
                                                                          <img src="Headshot.jpg" alt="A beautiful image" style="width: 210px; height: 200px;">
                                                                            <script src="script.js"></script>
                                                                              </body>
                                                                              <body background="black"></body>
                                                                                </html>
                                                                                
                                                                                <script src="script.js"></script>
                                                                                  </div>
                                                                                  </body>
                                                                                  <body background="black">
                                                                                    
                                                                                    
                                                                                    </html>
                                                                                    
                                                                                    <section id="resume">
                                                                                      <h2>Resume</h2>
                                                                                      <p>Download my resume <a href="resume.pdf">here</a>.</p>
                                                                                        </section>
                                                                                        
                                                                                        <section id="cv">
                                                                                          <h2>CV</h2>
                                                                                          <p>Download my CV <a href="cv.pdf">here</a>.</p>
                                                                                            </section>
                                                                                            
                                                                                            <section id="education">
                                                                                              <h2>Education</h2>
                                                                                              <ul>
                                                                                              <li>Bachelor of Science in Business Economics, Minors in       Sustainability & Data Analytics
                                                                                            <li>University of St. Thomas, 2019-2023</li>
                                                                                              <li>Master of Science in Data Science, ABC University, 2019-2021</li>
                                                                                              </ul>
                                                                                              </section>
                                                                                              
                                                                                              <section id="projects">
                                                                                                <h2>Projects</h2>
                                                                                                <ul>
                                                                                                <li><a href="gameproject.html">Squid Games</a></li>
                                                                                                  <li><a href="Human Consumption.pdf">Human Consumption</a></li>
                                                                                                    <li><a href="project3.html">Project 3</a></li>
                                                                                                      </ul>
                                                                                                      </section>
                                                                                                      
                                                                                                      -->
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      