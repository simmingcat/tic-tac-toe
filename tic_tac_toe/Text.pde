color darkBlue = #0311FF;
color Black = #000000;
PFont titleFont;

String title = "TicTacToe";
String Creator = "by AthenaChow";
String HardMode = "Hard";
String MediumMode = "Medium";
String EasyMode = "Easy";
String ModeD = "Dark";

String x="X:", o="O:";
String X = "X", O = "O";

void textSetup() {
}

void textDraw() {  
  titleFont = createFont("Italic", 48);

  fill(darkBlue);

  textAlign(CENTER, CENTER);
  textFont(titleFont, 40);
  text(title, 0, 0, 500, 84);


  textAlign(CENTER, BOTTOM);
  textFont(titleFont, 15);
  text(Creator, 0, 0, 500, 84);


  textAlign(CENTER, CENTER);
  textFont(titleFont, 30);
  text(HardMode, HardX, HardY, HardRectX, HardRectY);

  textAlign(CENTER, CENTER);
  textFont(titleFont, 30);
  text(MediumMode, mediumX, mediumY, mediumRectX, mediumRectY );

  textAlign(CENTER, CENTER);
  textFont(titleFont, 30);
  text(EasyMode, easyX, easyY, easyRectX, easyRectY );
  
  textAlign(CENTER, CENTER);
  textFont(titleFont, 10);
  text(ModeD, darkX, darkY, darkRectX, darkRectY);
}
