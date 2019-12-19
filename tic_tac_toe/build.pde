float quitX, quitY, quitRectX, quitRectY;
float easyX, easyY, easyRectX, easyRectY;
float mediumX, mediumY, mediumRectX, mediumRectY;
float HardX, HardY, HardRectX, HardRectY;
float darkX, darkY, darkRectX, darkRectY;
float score1X, score1Y, score1RectX, score1RectY;
float score2X, score2Y, score2RectX, score2RectY;


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
