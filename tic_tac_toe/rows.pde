float[] BoxX = new float[9];
float[] BoxY = new float[9];

float BoxWidth, BoxHeight;

float box1X, box1Y, box1RectX, box1RectY;
float box2X, box2Y, box2RectX, box2RectY;
float box3X, box3Y, box3RectX, box3RectY;

float box4X, box4Y, box4RectX, box4RectY;
float box5X, box5Y, box5RectX, box5RectY;
float box6X, box6Y, box6RectX, box6RectY;

float box7X, box7Y, box7RectX, box7RectY;
float box8X, box8Y, box8RectX, box8RectY;
float box9X, box9Y, box9RectX, box9RectY;

void rowsSetUp() {
  for (int i=0; i<BoxX.length; i=i+3) {
    BoxX[i] = 83 ; //spaceX1 = spaceX4 = spaceX7 = width * 0;
  }
  for (int i=1; i<BoxX.length; i=i+3) {
    BoxX[i] = 190; //spaceX2 = spaceX5 = spaceX8 = width * 1/3;
  }
  for (int i=2; i<BoxX.length; i=i+3) {
    BoxX[i] = 310; //spaceX3 = spaceX6 = spaceX9 = width * 2/3;
  }
  for (int i=0; i<4; i++) {
    BoxY[i] = 217; //spaceY1 = spaceY2 = spaceY3 = height * 1/4;
  }
  for (int i=3; i<6; i++) {
    BoxY[i] = 318 ; //spaceY4 = spaceY5 = spaceY6 = height * 2/4;
  }
  for (int i=6; i<9; i++) {
    BoxY[i] = 440 ; //spaceY7 = spaceY8 = spaceY9 = height * 3/4;
  }

  box1X = 83 ;
  box1Y = 217 ;
  box1RectX = 107;
  box1RectY = 102;

  box2X = 190;
  box2Y =  217;
  box2RectX = 120;
  box2RectY = 102;

  box3X = 310;
  box3Y = 217;
  box3RectX = 107;
  box3RectY = 102;

  box4X = 83;
  box4Y =  318;
  box4RectX = 107;
  box4RectY = 122;


  box5X = 190;
  box5Y = 318;
  box5RectX = 120;
  box5RectY = 122;

  box6X = 310;
  box6Y = 318;
  box6RectX = 107;
  box6RectY = 122;


  box7X = 83;
  box7Y = 440;
  box7RectX = 107;
  box7RectY = 102;

  box8X = 190;
  box8Y = 440;
  box8RectX = 120;
  box8RectY = 102;

  box9X = 310;
  box9Y = 440;
  box9RectX = 107;
  box9RectY = 102;
  
  BoxWidth = 1/3;
  BoxHeight = 1/3 ;
}



void rowsDraws() {
  
 // rect(BoxX[i], BoxY[i], BoxWidth, BoxHeight);
 
  /*
  rect (box1X, box1Y, box1RectX, box1RectY);
  rect (box2X, box2Y, box2RectX, box2RectY);
  rect (box3X, box3Y, box3RectX, box3RectY);

  rect (box4X, box4Y, box4RectX, box4RectY);
  rect (box5X, box5Y, box5RectX, box5RectY);
  rect (box6X, box6Y, box6RectX, box6RectY);

  //box row 3
  rect (box7X, box7Y, box7RectX, box7RectY);
  rect (box8X, box8Y, box8RectX, box8RectY);
  rect (box9X, box9Y, box9RectX, box9RectY);
  */
}
