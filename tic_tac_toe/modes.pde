boolean filldarkMode = false ;
int lightMode1 = 0;
int lightMode2 = 255;

color lighterGray = #FF5858 ;
color gray = #587DFF ;

void darkModeHover() {
  if (mouseX > darkX && mouseX < darkRectX && mouseY > darkY && mouseY < darkRectY ) {
    filldarkMode = true;
  } else {
    filldarkMode = false;
  }
}

void darkModeColorChange() {
  if ( filldarkMode == true ) {
    fill(lighterGray);
    rect(darkX, darkY, darkRectX, darkRectY);
  } else {
    fill(gray);
    rect(darkX, darkY, darkRectX, darkRectY);
  }
  
}
void darkModePressed() {
  if (mouseX > darkX && mouseX < darkRectX && mouseY > darkY && mouseY < darkRectY ) {
    if (filldarkMode == false) {
      filldarkMode = true;
      lightMode2 = 255;
    } else {
    filldarkMode = false;
    lightMode2 = 0;
    }
  }
}
//darkX, darkY, darkRectX, darkRectY
