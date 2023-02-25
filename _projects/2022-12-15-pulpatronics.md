---
layout: project
title: pulpatronics
description: >
  PulpaTronics is a technology developed in collaboration with <a href="https://www.linkedin.com/in/chloe-so/" style="text-decoration:none" target="_blank" >chloe so</a>, <a href="https://www.linkedin.com/in/jingyan-chen-8aa236206/" style="text-decoration:none" target="_blank" >chris chen</a> and <a href="https://www.instagram.com/a.smarthorse/" style="text-decoration:none" target="_blank" >rui ma</a> as a second year master project. PulpaTronics is a novel way of producing RFID tags by inducing a conductive material on the surface of paper in specific patterns. PulpaTronics tags are significantly cheaper and more sustainable than conventional tags.<br><br>read more:
  <a href="https://wip2023.rca.ac.uk/programmes/innovation-design-engineering-pulpatronics-ma" style="text-decoration:none" target="_blank" >here</a><br> <!-- <br> collaborators: -->
  <!-- <a href="https://www.linkedin.com/in/chloe-so/" style="text-decoration:none" target="_blank" >chloe so</a>, -->
  <!-- <a href="https://www.linkedin.com/in/jingyan-chen-8aa236206/" style="text-decoration:none" target="_blank" >chris chen</a> & -->
  <!-- <a href="https://www.instagram.com/a.smarthorse/" style="text-decoration:none" target="_blank" >rui ma</a> -->
summary: recyclable chipless carbon-based RFID tags made to preserve our world’s natural resources
image: pt.png
hover: pt.png
link: pt
prev2: https://bsbiro.github.io/projects/living-plant-construction
next2: https://bsbiro.github.io/projects/figyelo-top200
category: technology
---

<div class="slideshow-container">

  <div class="mySlides fade">
    <img src="../pt1.jpg" style="width:100%">
  </div>

  <div class="mySlides fade">
    <img src="../pt2.jpg" style="width:100%">
  </div>

  <div class="mySlides fade">
    <img src="../pt3.jpg" style="width:100%">
  </div>
  
  <div class="mySlides fade">
    <img src="../pt4.jpg" style="width:100%">
  </div>
  
  <div class="mySlides fade">
    <img src="../pt5.jpg" style="width:100%">
  </div>

  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)">•</span>
  <span class="dot" onclick="currentSlide(2)">•</span>
  <span class="dot" onclick="currentSlide(3)">•</span>
  <span class="dot" onclick="currentSlide(4)">•</span>
  <span class="dot" onclick="currentSlide(5)">•</span>
</div>

<script>
  
let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}
  
</script>
