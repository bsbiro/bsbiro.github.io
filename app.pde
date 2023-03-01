/**
 * 12 growing buttons and randomly shrinking
 * 
 * Buttons in a grid growing based on click number and one random neighbour shrinking.
 */
 
int rect1X, rect1Y;
int rect2X, rect2Y;
int rect3X, rect3Y;
int rect4X, rect4Y;
int rect5X, rect5Y;
int rect6X, rect6Y;
int rect7X, rect7Y;
int rect8X, rect8Y;
int rect9X, rect9Y;
int rect10X, rect10Y;
int rect11X, rect11Y;
int rect12X, rect12Y;

int rect1Size;
int rect2Size;
int rect3Size;
int rect4Size;
int rect5Size;
int rect6Size;
int rect7Size;
int rect8Size;
int rect9Size;
int rect10Size;
int rect11Size;
int rect12Size;

boolean rect1Over = false;
boolean rect2Over = false;
boolean rect3Over = false;
boolean rect4Over = false;
boolean rect5Over = false;
boolean rect6Over = false;
boolean rect7Over = false;
boolean rect8Over = false;
boolean rect9Over = false;
boolean rect10Over = false;
boolean rect11Over = false;
boolean rect12Over = false;

void setup() {
  size(400, 525);
  
  rect1Size = 100;
  rect2Size = 100;
  rect3Size = 100;
  rect4Size = 100;
  rect5Size = 100;
  rect6Size = 100;
  rect7Size = 100;
  rect8Size = 100;
  rect9Size = 100;
  rect10Size = 100;
  rect11Size = 100;
  rect12Size = 100;
  
  rect1X = 25;
  rect1Y = 25;
  rect2X = 150;
  rect2Y = 25;
  rect3X = 275;
  rect3Y = 25;
  rect4X = 25;
  rect4Y = 150;
  rect5X = 150;
  rect5Y = 150;
  rect6X = 275;
  rect6Y = 150;
  rect7X = 25;
  rect7Y = 275;
  rect8X = 150;
  rect8Y = 275;
  rect9X = 275;
  rect9Y = 275;
  rect10X = 25;
  rect10Y = 400;
  rect11X = 150;
  rect11Y = 400;
  rect12X = 275;
  rect12Y = 400;
  
}

void draw() {
  update(mouseX, mouseY);
  
  background(255);
  stroke(0);
  fill(255);
  rect(rect1X, rect1Y, rect1Size, rect1Size);

  rect(rect2X, rect2Y, rect2Size, rect2Size);
  
  rect(rect3X, rect3Y, rect3Size, rect3Size);

  rect(rect4X, rect4Y, rect4Size, rect4Size);
  
  rect(rect5X, rect5Y, rect5Size, rect5Size);

  rect(rect6X, rect6Y, rect6Size, rect6Size);
  
  rect(rect7X, rect7Y, rect7Size, rect7Size);

  rect(rect8X, rect8Y, rect8Size, rect8Size);
  
  rect(rect9X, rect9Y, rect9Size, rect9Size);

  rect(rect10X, rect10Y, rect10Size, rect10Size);
  
  rect(rect11X, rect11Y, rect11Size, rect11Size);

  rect(rect12X, rect12Y, rect12Size, rect12Size);
}

void update(int x, int y) {
  if ( overrect1(rect1X, rect1Y, rect1Size, rect1Size) ) {
    rect1Over = true;
    rect2Over = false;
    rect3Over = false;
    rect4Over = false;
    rect5Over = false;
    rect6Over = false;
    rect7Over = false;
    rect8Over = false;
    rect9Over = false;
    rect10Over = false;
    rect11Over = false;
    rect12Over = false;
  } else if ( overrect2(rect2X, rect2Y, rect2Size, rect2Size) ) {
    rect1Over = false;
    rect2Over = true;
    rect3Over = false;
    rect4Over = false;
    rect5Over = false;
    rect6Over = false;
    rect7Over = false;
    rect8Over = false;
    rect9Over = false;
    rect10Over = false;
    rect11Over = false;
    rect12Over = false;
  } else if ( overrect3(rect3X, rect3Y, rect3Size, rect3Size) ) {
    rect1Over = false;
    rect2Over = false;
    rect3Over = true;
    rect4Over = false;
    rect5Over = false;
    rect6Over = false;
    rect7Over = false;
    rect8Over = false;
    rect9Over = false;
    rect10Over = false;
    rect11Over = false;
    rect12Over = false;
  } else if ( overrect4(rect4X, rect4Y, rect4Size, rect4Size) ) {
    rect1Over = false;
    rect2Over = false;
    rect3Over = false;
    rect4Over = true;
    rect5Over = false;
    rect6Over = false;
    rect7Over = false;
    rect8Over = false;
    rect9Over = false;
    rect10Over = false;
    rect11Over = false;
    rect12Over = false;
  } else if ( overrect5(rect5X, rect5Y, rect5Size, rect5Size) ) {
    rect1Over = false;
    rect2Over = false;
    rect3Over = false;
    rect4Over = false;
    rect5Over = true;
    rect6Over = false;
    rect7Over = false;
    rect8Over = false;
    rect9Over = false;
    rect10Over = false;
    rect11Over = false;
    rect12Over = false;
  } else if ( overrect6(rect6X, rect6Y, rect6Size, rect6Size) ) {
    rect1Over = false;
    rect2Over = false;
    rect3Over = false;
    rect4Over = false;
    rect5Over = false;
    rect6Over = true;
    rect7Over = false;
    rect8Over = false;
    rect9Over = false;
    rect10Over = false;
    rect11Over = false;
    rect12Over = false;
  } else if ( overrect7(rect7X, rect7Y, rect7Size, rect7Size) ) {
    rect1Over = false;
    rect2Over = false;
    rect3Over = false;
    rect4Over = false;
    rect5Over = false;
    rect6Over = false;
    rect7Over = true;
    rect8Over = false;
    rect9Over = false;
    rect10Over = false;
    rect11Over = false;
    rect12Over = false;
  } else if ( overrect8(rect8X, rect8Y, rect8Size, rect8Size) ) {
    rect1Over = false;
    rect2Over = false;
    rect3Over = false;
    rect4Over = false;
    rect5Over = false;
    rect6Over = false;
    rect7Over = false;
    rect8Over = true;
    rect9Over = false;
    rect10Over = false;
    rect11Over = false;
    rect12Over = false;
  } else if ( overrect9(rect9X, rect9Y, rect9Size, rect9Size) ) {
    rect1Over = false;
    rect2Over = false;
    rect3Over = false;
    rect4Over = false;
    rect5Over = false;
    rect6Over = false;
    rect7Over = false;
    rect8Over = false;
    rect9Over = true;
    rect10Over = false;
    rect11Over = false;
    rect12Over = false;
  } else if ( overrect10(rect10X, rect10Y, rect10Size, rect10Size) ) {
    rect1Over = false;
    rect2Over = false;
    rect3Over = false;
    rect4Over = false;
    rect5Over = false;
    rect6Over = false;
    rect7Over = false;
    rect8Over = false;
    rect9Over = false;
    rect10Over = true;
    rect11Over = false;
    rect12Over = false;
  } else if ( overrect11(rect11X, rect11Y, rect11Size, rect11Size) ) {
    rect1Over = false;
    rect2Over = false;
    rect3Over = false;
    rect4Over = false;
    rect5Over = false;
    rect6Over = false;
    rect7Over = false;
    rect8Over = false;
    rect9Over = false;
    rect10Over = false;
    rect11Over = true;
    rect12Over = false;
  } else if ( overrect12(rect12X, rect12Y, rect12Size, rect12Size) ) {
    rect1Over = false;
    rect2Over = false;
    rect3Over = false;
    rect4Over = false;
    rect5Over = false;
    rect6Over = false;
    rect7Over = false;
    rect8Over = false;
    rect9Over = false;
    rect10Over = false;
    rect11Over = false;
    rect12Over = true;  
  } else {
    rect1Over = rect2Over = rect3Over = rect4Over = rect5Over = rect6Over = rect7Over = rect8Over = rect9Over = rect10Over = rect11Over = rect12Over = false;
  }
}

void mousePressed() {
  if (rect1Over) {
    rect1Size = rect1Size+2;
    rect1X = rect1X-1;
    rect1Y = rect1Y-1;
    int a1, b1;
    if(random(1) <= .5){
      a1=2;
      b1=0;
    }
    else{
      a1=0;
      b1=2;
    }
    rect2Size = rect2Size-a1;
    rect2X = rect2X+a1/2;
    rect2Y = rect2Y+a1/2;
    rect4Size = rect4Size-b1;
    rect4X = rect4X+b1/2;
    rect4Y = rect4Y+b1/2;
  }
  if (rect2Over) {
    rect2Size = rect2Size+2;
    rect2X = rect2X-1;
    rect2Y = rect2Y-1;
    int a2, b2, c2;
    float r2 = random(.9);
    if(r2 <= .3){
      a2=2;
      b2=0;
      c2=0;
    }
    else if(.6 < r2){
      a2=0;
      b2=0;
      c2=2;
    }
    else {
      a2=0;
      b2=2;
      c2=0;
    }
    rect1Size = rect1Size-a2;
    rect1X = rect1X+a2/2;
    rect1Y = rect1Y+a2/2;
    rect3Size = rect3Size-b2;
    rect3X = rect3X+b2/2;
    rect3Y = rect3Y+b2/2;
    rect5Size = rect5Size-c2;
    rect5X = rect5X+c2/2;
    rect5Y = rect5Y+c2/2;
  }
  if (rect3Over) {
    rect3Size = rect3Size+2;
    rect3X = rect3X-1;
    rect3Y = rect3Y-1;
    int a3, b3;
    float r3 = random(1);
    if(r3 <= .5){
      a3=2;
      b3=0;
    }
    else {
      a3=0;
      b3=2;
    }
    rect2Size = rect2Size-a3;
    rect2X = rect2X+a3/2;
    rect2Y = rect2Y+a3/2;
    rect6Size = rect6Size-b3;
    rect6X = rect6X+b3/2;
    rect6Y = rect6Y+b3/2;
  }
  if (rect4Over) {
    rect4Size = rect4Size+2;
    rect4X = rect4X-1;
    rect4Y = rect4Y-1;
    int a4, b4, c4;
    float r4 = random(.9);
    if(r4 <= .3){
      a4=2;
      b4=0;
      c4=0;
    }
    else if(.6 < r4){
      a4=0;
      b4=0;
      c4=2;
    }
    else {
      a4=0;
      b4=2;
      c4=0;
    }
    rect1Size = rect1Size-a4;
    rect1X = rect1X+a4/2;
    rect1Y = rect1Y+a4/2;
    rect5Size = rect5Size-b4;
    rect5X = rect5X+b4/2;
    rect5Y = rect5Y+b4/2;
    rect7Size = rect7Size-c4;
    rect7X = rect7X+c4/2;
    rect7Y = rect7Y+c4/2;
  }  
  if (rect5Over) {
    rect5Size = rect5Size+2;
    rect5X = rect5X-1;
    rect5Y = rect5Y-1;
    int a5, b5, c5, d5;
    float r5 = random(1);
    if(r5 <= .25){
      a5=2;
      b5=0;
      c5=0;
      d5=0;
    }
    else if(.25 < r5 & r5 <= .5){
      a5=0;
      b5=2;
      c5=0;
      d5=0;
    }
    else if (.75<=r5){
      a5=0;
      b5=0;
      c5=0;
      d5=2;
    }
    else {
      a5=0;
      b5=0;
      c5=2;
      d5=0;
    }
    rect2Size = rect2Size-a5;
    rect2X = rect2X+a5/2;
    rect2Y = rect2Y+a5/2;
    rect4Size = rect4Size-b5;
    rect4X = rect4X+b5/2;
    rect4Y = rect4Y+b5/2;
    rect6Size = rect6Size-c5;
    rect6X = rect6X+c5/2;
    rect6Y = rect6Y+c5/2;
    rect8Size = rect8Size-d5;
    rect8X = rect8X+d5/2;
    rect8Y = rect8Y+d5/2;
  }
  if (rect6Over) {
    rect6Size = rect6Size+2;
    rect6X = rect6X-1;
    rect6Y = rect6Y-1;
    int a6, b6, c6;
    float r6 = random(.9);
    if(r6 <= .3){
      a6=2;
      b6=0;
      c6=0;
    }
    else if(.6 < r6){
      a6=0;
      b6=0;
      c6=2;
    }
    else {
      a6=0;
      b6=2;
      c6=0;
    }
    rect3Size = rect3Size-a6;
    rect3X = rect3X+a6/2;
    rect3Y = rect3Y+a6/2;
    rect5Size = rect5Size-b6;
    rect5X = rect5X+b6/2;
    rect5Y = rect5Y+b6/2;
    rect9Size = rect9Size-c6;
    rect9X = rect9X+c6/2;
    rect9Y = rect9Y+c6/2;
  }    
  if (rect7Over) {
    rect7Size = rect7Size+2;
    rect7X = rect7X-1;
    rect7Y = rect7Y-1;
    int a7, b7, c7;
    float r7 = random(.9);
    if(r7 <= .3){
      a7=2;
      b7=0;
      c7=0;
    }
    else if(.6 < r7){
      a7=0;
      b7=0;
      c7=2;
    }
    else {
      a7=0;
      b7=2;
      c7=0;
    }
    rect4Size = rect4Size-a7;
    rect4X = rect4X+a7/2;
    rect4Y = rect4Y+a7/2;
    rect8Size = rect8Size-b7;
    rect8X = rect8X+b7/2;
    rect8Y = rect8Y+b7/2;
    rect10Size = rect10Size-c7;
    rect10X = rect10X+b7/2;
    rect10Y = rect10Y+b7/2;
  }    
  if (rect8Over) {
    rect8Size = rect8Size+2;
    rect8X = rect8X-1;
    rect8Y = rect8Y-1;
    int a8, b8, c8, d8;
    float r8 = random(1);
    if(r8 <= .25){
      a8=2;
      b8=0;
      c8=0;
      d8=0;
    }
    else if(.25 < r8 & r8 <= .5){
      a8=0;
      b8=2;
      c8=0;
      d8=0;
    }
    else if (.75<=r8){
      a8=0;
      b8=0;
      c8=0;
      d8=2;
    }
    else {
      a8=0;
      b8=0;
      c8=2;
      d8=0;
    }
    
    rect5Size = rect5Size-a8;
    rect5X = rect5X+a8/2;
    rect5Y = rect5Y+a8/2;
    rect7Size = rect7Size-b8;
    rect7X = rect7X+b8/2;
    rect7Y = rect7Y+b8/2;
    rect9Size = rect9Size-c8;
    rect9X = rect9X+c8/2;
    rect9Y = rect9Y+c8/2;
    rect11Size = rect11Size-d8;
    rect11X = rect11X+d8/2;
    rect11Y = rect11Y+d8/2;
  }
  if (rect9Over) {
    rect9Size = rect9Size+2;
    rect9X = rect9X-1;
    rect9Y = rect9Y-1;
    int a9, b9, c9;
    float r9 = random(.9);
    if(r9 <= .3){
      a9=2;
      b9=0;
      c9=0;
    }
    else if(.6 < r9){
      a9=0;
      b9=0;
      c9=2;
    }
    else {
      a9=0;
      b9=2;
      c9=0;
    }
    rect6Size = rect6Size-a9;
    rect6X = rect6X+a9/2;
    rect6Y = rect6Y+a9/2;
    rect8Size = rect8Size-b9;
    rect8X = rect8X+b9/2;
    rect8Y = rect8Y+b9/2;
    rect12Size = rect12Size-c9;
    rect12X = rect12X+c9/2;
    rect12Y = rect12Y+c9/2;
  }  
  if (rect10Over) {
    rect10Size = rect10Size+2;
    rect10X = rect10X-1;
    rect10Y = rect10Y-1;
    int a10, b10;
    float r10 = random(1);
    if(r10 <= .5){
      a10=2;
      b10=0;
    }
    else {
      a10=0;
      b10=2;
    }
    rect7Size = rect7Size-a10;
    rect7X = rect7X+a10/2;
    rect7Y = rect7Y+a10/2;
    rect11Size = rect11Size-b10;
    rect11X = rect11X+b10/2;
    rect11Y = rect11Y+b10/2;
  }
  if (rect11Over) {
    rect11Size = rect11Size+2;
    rect11X = rect11X-1;
    rect11Y = rect11Y-1;
    int a11, b11, c11;
    float r11 = random(.9);
    if(r11 <= .3){
      a11=2;
      b11=0;
      c11=0;
    }
    else if(.6 < r11){
      a11=0;
      b11=0;
      c11=2;
    }
    else {
      a11=0;
      b11=2;
      c11=0;
    }
    rect10Size = rect10Size-a11;
    rect10X = rect10X+a11/2;
    rect10Y = rect10Y+a11/2;
    rect8Size = rect8Size-b11;
    rect8X = rect8X+b11/2;
    rect8Y = rect8Y+b11/2;
    rect12Size = rect12Size-c11;
    rect12X = rect12X+c11/2;
    rect12Y = rect12Y+c11/2;
  }  
  if (rect12Over) {
    rect12Size = rect12Size+2;
    rect12X = rect12X-1;
    rect12Y = rect12Y-1;
    int a12, b12;
    float r12 = random(1);
    if(r12 <= .5){
      a12=2;
      b12=0;
    }
    else {
      a12=0;
      b12=2;
    }
    rect9Size = rect9Size-a12;
    rect9X = rect9X+a12/2;
    rect9Y = rect9Y+a12/2;
    rect11Size = rect11Size-b12;
    rect11X = rect11X+b12/2;
    rect11Y = rect11Y+b12/2;
  }
}

boolean overrect1(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overrect2(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overrect3(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overrect4(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overrect5(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overrect6(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overrect7(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overrect8(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overrect9(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overrect10(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overrect11(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overrect12(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
