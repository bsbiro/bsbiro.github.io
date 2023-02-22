---
layout: project
title: tube chair
description: >
  The tube chair was designed and built in under a month for the module Superform. The shape of the chair was inspired by modular piping systems used for building infrastructure. The tube chair is made of a single continuous metal tube frame covered in upholstery foam and wrapped in a latex sheet.
summary: chair designed and completed in under a month
image: pt.png
hover: tc.png
link: tc
prev: https://bsbiro.github.io/projects/amoeba
next: https://bsbiro.github.io/projects/living-plant-construction
category: product design
---

<div class="slideshow-container">

  <div class="mySlides fade">
    <img src="../tc1.jpg" style="width:100%">
  </div>

  <div class="mySlides fade">
    <img src="../tc2.jpg" style="width:100%">
  </div>
  
  <div class="mySlides fade">
    <img src="../tc3.jpg" style="width:100%">
  </div>
    
  <div class="mySlides fade">
    <img src="../tc4.jpg" style="width:100%">
  </div>
  
  <div class="mySlides fade">
    <img src="../tc5.jpg" style="width:100%">
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
