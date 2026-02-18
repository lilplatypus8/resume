#import "@preview/basic-resume:0.2.9": *

#let name = "Josiah Schmitz"
#let location = "Dayton, OH"
#let email = "jmschmitz8@gmail.com"
#let github = "github.com/lilplatypus8"
#let linkedin = "linkedin.com/in/josiah-schmitz-580942320"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: center,
  personal-info-position: center,
)

#align(center, "Active Security Clearance")

// Custom functions
// ----------------

#let custom-title(title, body) = {
  body
  v(0.2em)
}

#let education-heading(
  major: "", 
  grad-date: "", 
  uni: "", 
  location: "", 
  gpa: "", 
  body
) = {
  generic-two-by-two(top-left: [*#major*], top-right: [*#grad-date*], bottom-left: uni, bottom-right: "GPA: " + gpa)
  v(-0.2em)

  if body != [] {
    v(-0.4em)
    set par(leading: 0.6em)
    set list(indent: 0.5em)
    body
  }
}

// ----------------

== Education
#custom-title("Education")[
  #education-heading(
    major: "Bachelor's of Science in Computer Science",     
    grad-date: "May 2026",                                   
    uni: "Wright State University",                         
    location: "Dayton, OH ",                                       
    gpa: "3.842"                                        
  )[
    - Minor in Mathematics
  ]
  #education-heading(
    major: "Master's of Science in Computer Engineering",
    grad-date: "May 2027",
    uni: "Wright State University",
    location: "Dayton, OH",
    gpa: "3.842"                                        
  )[]
]

== Work Experience

#work(
  title: "General Intern",
  location: "Xenia, OH",
  company: "TJAR Innovations LLC",
  dates: dates-helper(start-date: "Sep 2021", end-date: "Aug 2023"),
)
- Learned to use SOLIDWORKS from scratch
- Utilized SOLIDWORKS to design models for industrial 3D-printed molds
- Created simple SOLIDWORKS assemblies to help visualize components for employer

#work(
  title: "Software Intern",
  location: "Fairborn, OH",
  company: "SciTec Inc",
  dates: dates-helper(start-date: "Jun 2024", end-date: "Aug 2024"),
)
- Supported software development on SBIR contract for the US Air Force on a four-person team at 350-employee defense contracting company for two separate summers
- Set up a custom docker container using Redhat Linux
- Co-developed a recorder and playback tool for ZMQ data streams
- Wrote unit tests for ZMQ program in Java to ensure 80% code coverage

#work(
  title: "Software Intern",
  location: "Fairborn, OH",
  company: "SciTec Inc",
  dates: dates-helper(start-date: "Jun 2025", end-date: "Aug 2025"),
)
- Participated in a ten-person team and learned common team management practices
- Assisted in development of visualization software for geostationary and geosynchronous satellites

== Projects

#project(
  name: "Word Memory Video Game",
  dates: dates-helper(start-date: "Mar 2023", end-date: "Apr 2023"),
)
- Came up with the idea for an original video game involving word memory
- Programmed the entire video game in Java with the Swing toolkit
- Used GUIs to create a functional interface for the video game
- Provided instructions to the player via GUIs for how to play the video game

#project(
  name: "Magic Schedule Generator",
  dates: dates-helper(start-date: "Aug 2025", end-date: "Dec 2025"),
)
- Worked on a team with two other graduate students for an Intro to Software Engineering course
- Developed a program that could generate class schedules for a student given specified majors and desired schedule length
- Program had a fully developed web interface that used Flask as the framework for the back-end
- Assisted with the development of both the Python-based back-end and HTML/CSS-based front-end
- Learned to communicate and divide responsibilities with team members and document progress with weekly reports

== Skills
- *Programming Languages*: Java, Python, C/C++, Bash, HTML
- *Technologies*: VSCode, Eclipse, git, UNIX, Docker, Vim, Java Swing, SOLIDWORKS

== Achievements
- #generic-one-by-two(left: "Wright State Honors Program Competitive Scholarship", right: dates-helper(start-date: "Aug 2022", end-date: "Apr 2025"))
- #generic-one-by-two(left: "College of Science and Mathematics Dean's List", right: "Fall 2024")
- #generic-one-by-two(left: "College of Science and Mathematics Dean's List", right: dates-helper(start-date: "Spring 2025", end-date: "Present"))