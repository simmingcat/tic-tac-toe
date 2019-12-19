Boolean[] clickX = new Boolean[9];
Boolean[] clickO = new Boolean[9];
Boolean[] noDraw = new Boolean[9];
int drawCounter; //If odd, X-turn; if even, O-turn (uses modulus to evalaute even and odd number, basic algorithm

void drawXO() {
  
  //rect(spaceX1, spaceY1, spaceWidth, spaceHeight);
  //rect(easyX, easyY, easyRectX, easyRectY);
 // int XOdraw = drawCounter % 2;
  for (int i=0; i<noDraw.length; i++) {
    if ( noDraw[i]==true) {
      if (clickX[i]==true) {
        noStroke();
        rect(BoxX[i], BoxY[i], BoxWidth, BoxHeight);
        //text for x
        stroke(1);
        
      } else if (clickO[i]==true) {
        noStroke();
        rect(BoxX[i], BoxY[i], BoxWidth, BoxHeight);
        //text for o
        stroke(1);
      } else {
      }
    }
  }

}
void clickXO() {
  
  //rect(spaceX1, spaceY1, spaceWidth, spaceHeight);
  //rect(easyX, easyY, easyRectX, easyRectY);
  int XOclick;
  for (int i=0; i<noDraw.length; i++) {
    if (mouseX>BoxX[i] && mouseX<BoxX[i]+BoxWidth && mouseY>BoxY[i] && mouseY<BoxY[i]+BoxHeight ) {
      drawCounter++; //drawCounter=drawCounter+1
      XOclick = drawCounter % 2;
      if (XOclick == 1) {
        clickX[i] = true;
        noDraw[i] = true;
      } else if (XOclick == 0) {
        clickO[i] = true;
        noDraw[i] = true;
      } else {
      }
    }
  }
}
