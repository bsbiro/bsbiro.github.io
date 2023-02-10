---
layout: project
title: living plant construction
description: a connector unit for constructing spaces out of living plants using grafting
summary: a connector unit for constructing spaces out of living plants using grafting
image: pt.png
hover: connector 5.png
link: lpc
category: product design
---

<div class="slideshow-container">

  <div class="mySlides fade">
    <img src="../lpc1.jpg" style="width:100%">
  </div>

  <div class="mySlides fade">
    <img src="../lpc2.jpg" style="width:100%">
  </div>

  <div class="mySlides fade">
    <img src="../lpc3.jpg" style="width:100%">
  </div>
  
  <div class="mySlides fade">
    <img src="../lpc4.jpg" style="width:100%">
  </div>
  
  <div class="mySlides fade">
    <img src="../lpc5.jpg" style="width:100%">
  </div>
    
  <div class="mySlides fade">
    <img src="../lpc6.jpg" style="width:100%">
  </div>
    
  <div class="mySlides fade">
    <img src="../lpc7.jpg" style="width:100%">
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
  <span class="dot" onclick="currentSlide(6)">•</span>
  <span class="dot" onclick="currentSlide(7)">•</span>
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
