color b1, b2;
int Y_AXIS = 1;
int X_AXIS = 2;

void setup() {
  size(500, 650);
  BuildSetUp();
  bored();
  quitButtonSetup();
  rowsSetUp();
}

void draw() {
  loop();
  bored();
  quitButtonDraw();
  textDraw();
  darkModeHover();
  darkModeColorChange();
  rowsDraws();
  drawXO();

  //println ("Mousex:", mouseX, "\tMouseY:", mouseY);
}


void mousePressed() {
  quitButtonMouseClicked();
  darkModePressed();
  clickXO();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == 'r') {
      exit();
    }
  }
}
