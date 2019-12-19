String quit = "X";
PFont quitButtonFont;
color purple = #2C08FF; //Ink
color purpleQuitButton = white;
color yellowQuitButton = #9DF6FF ;


void quitButtonRect() {
  noStroke();
  rect(width*19/20, 1, width*1/20, height*1/20);
}
void quitButtonSetup() {
  quitButtonFont = createFont ("Italics", 45); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  quitButtonRect(); //Quit Button
}

void quitButtonDraw() {
  //HoverOver
  //Text in Quit Button
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(quitButtonFont, 20); //Change the number until it fits, largest font size
  text(quit, width*19/20, height*0, width*1/20, height*1/20);
  fill(255); //Reset to white for rest of the program
}

void quitButtonMouseClicked() {
  if (mouseX >= width*19/20  && mouseX <= width && mouseY >= height*0 && mouseY <= height*1/20) {
    exit();
  }
}
