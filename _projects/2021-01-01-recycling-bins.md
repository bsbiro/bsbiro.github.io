---
layout: project
title: recycling bins
description:  >
  The recycling bins were designed as part of a collaboration between the <a href="https://corvinrajziskola.hu/" style="text-decoration:none" target="_blank" >corvin art school</a> and a <a href="https://lemezdesign.eu/" style="text-decoration:none" target="_blank" >metal manufacturer</a> in a close conversation with the customer under the supervision of <a href="https://renatoarpas.wixsite.com/design" style="text-decoration:none" target="_blank" >renato arpas</a>. The square-shaped base of the individual bins allows for numerous arrangements. The different openings of the bins help identify the type of rubbish that needs to go into the bin.
  <!-- <br> <br> consultants: <a href="https://renatoarpas.wixsite.com/design" style="text-decoration:none" target="_blank" >renato arpas</a> & -->
  <!-- <a href="https://lemezdesign.eu/" style="text-decoration:none" target="_blank" >tamas szollosi</a> -->
  <!-- <br> <br> school: <a href="https://corvinrajziskola.hu/" style="text-decoration:none" target="_blank" >corvin art school</a> -->
summary: recycling bins made of uniform containers and various lids for different types of litter
image: pt.png
hover: bins 2.2.png
link: bin
prev: https://bsbiro.github.io/projects/we-are-you
next: https://bsbiro.github.io/projects/amoeba
category: product design
---

<div class="slideshow-container">

  <div class="mySlides fade">
    <img src="../bin1.jpg" style="width:100%">
  </div>
  <div class="mySlides fade">
    <img src="../bin2.jpg" style="width:100%">
  </div>
  <div class="mySlides fade">
    <img src="../bin3.jpg" style="width:100%">
  </div>
  <div class="mySlides fade">
    <img src="../bin4.jpg" style="width:100%">
  </div>

  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)">•</span>
  <span class="dot" onclick="currentSlide(2)">•</span>
  <span class="dot" onclick="currentSlide(3)">•</span>
  <span class="dot" onclick="currentSlide(4)">•</span>
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
