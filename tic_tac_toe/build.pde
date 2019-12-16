float quitX, quitY, quitRectX, quitRectY;
float easyX, easyY, easyRectX, easyRectY;
float mediumX, mediumY, mediumRectX, mediumRectY;
float HardX, HardY, HardRectX, HardRectY;
float darkX, darkY, darkRectX, darkRectY;
float score1X, score1Y, score1RectX, score1RectY;
float score2X, score2Y, score2RectX, score2RectY;

float box1X, box1Y, box1RectX, box1RectY;
float box2X, box2Y, box2RectX, box2RectY;
float box3X, box3Y, box3RectX, box3RectY;

float box4X, box4Y, box4RectX, box4RectY;
float box5X, box5Y, box5RectX, box5RectY;
float box6X, box6Y, box6RectX, box6RectY;

float box7X, box7Y, box7RectX, box7RectY;
float box8X, box8Y, box8RectX, box8RectY;
float box9X, box9Y, box9RectX, box9RectY;


color white = 255;

void BuildSetUp() {
  quitX = 421 ;
  quitY = 601 ;
  quitRectX = 500 ;
  quitRectY = 650 ;
  
  easyX = 26 ;
  easyY = 84 ; 
  easyRectX = width * 1/3;
  easyRectY = 50;
  
  mediumX = 191 ;
  mediumY = 84;
  mediumRectX = width * 1/3;
  mediumRectY = 50;
  
  HardX = 357;
  HardY = 84; 
  HardRectX = 121;
  HardRectY = 50;
  
  darkX = 39 ; 
  darkY = 0 ; 
  darkRectX = 30 ; 
  darkRectY = 30 ;
  
  score1X = 119 ;
  score1Y = 565 ;
  score1RectX = 50 ;
  score1RectY = 50 ;
  
  score2X = 328; 
  score2Y = 565;
  score2RectX = 50;
  score2RectY = 50;
  
}

void bored() {
  b1 = color(#A7FFF3);
  b2 = color(#9DFFA1);

  blackground();
  fill(white);
  //quit
  
  rect(0, 0, 500, 84); //title
  rect(25, 84, 454, 50); //difficalty

  //lines
  line(190, 230, 190, 533);
  line(310, 230, 310, 533);

  line(83, 316, 416, 316);
  line(83, 432, 416, 432);


  //O and x
  rect(164, 141, 50, 50);
  rect(330, 141, 50, 50);
  
  //mode
  rect(easyX, easyY, easyRectX, easyRectY); // easy
  rect(mediumX, mediumY, mediumRectX, mediumRectY);// medium
  rect(HardX, HardY, HardRectX, HardRectY); // hard
  
  rect(darkX, darkY, darkRectX, darkRectY);//darkmode
  
  //score
  rect(score1X, score1Y, score1RectX, score1RectY);
  rect(score2X, score2Y, score2RectX, score2RectY);
  
  fill(lightMode2);
  //box row 1
  rect (83, 217, 107, 102);
  rect (190, 217, 120, 102);
  rect (310, 217, 107, 102);

  //box row 2
  rect (83, 318, 107, 122);
  rect (190, 318, 120, 122);
  rect (310, 318, 107, 122);

  //box row 3
  rect (83, 440, 107, 102);
  rect (190, 440, 120, 102);
  rect (310, 440, 107, 102);
  fill(0);
  noStroke();
}

void blackground() {
  setGradient(0, 0, 800, height, b2, b1, X_AXIS);
}

void setGradient(int x, int y, float w, float h, color b1, color b2, int axis ) {

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(b1, b2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  } else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(b1, b2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}
