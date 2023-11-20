//Global Variables
color Gray=#AFAFAF;
color resetDefaultInk=#FFFFFF;
int appWidth, appHeight;
float xFrontBackground, yFrontBackground, widthFrontBackground, heightFrontBackground;
//
void setup() {
  //
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width:"+displayWidth, "\tDisplay Height: "+displayHeight);
  //
  //fullScreen();
  size(1000, 800);
 int appWidth = width;
 int appHeight = height;
 //
 xFrontBackground = appWidth*0;
 yFrontBackground = appHeight*0;
 widthFrontBackground = appWidth-1;
 heightFrontBackground = appHeight-1;
 //
} //End setup
//
void draw() {
  //
  fill(Gray);
  rect(xFrontBackground, yFrontBackground, widthFrontBackground, heightFrontBackground);
  fill(resetDefaultInk);
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
