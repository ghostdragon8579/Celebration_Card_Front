//Global Variables
color Gray=#AFAFAF;
color DarkRed=#AA021B;
color resetDefaultInk=#FFFFFF;
int appWidth, appHeight;
int size;
PFont Greetingfont;
String Greetings = "Happy Holidays!";
float xFrontDeadSpace, yFrontDeadSpace, widthFrontDeadSpace, heightFrontDeadSpace;
float xFrontBackground, yFrontBackground, widthFrontBackground, heightFrontBackground;
float xFrontText, yFrontText, widthFrontText, heightFrontText;
float xFrontImage, yFrontImage, widthFrontImage, heightFrontImage;
//
void setup() {
  //
  //fullScreen();
  size(1000, 800);
  int appWidth = width;
  int appHeight = height;
  //
  xFrontDeadSpace = appWidth*0;
  yFrontDeadSpace = appHeight*0;
  widthFrontDeadSpace = appWidth-1;
  heightFrontDeadSpace = appHeight-1;
  //
  xFrontBackground = appWidth*1/4;
  yFrontBackground = yFrontDeadSpace;
  widthFrontBackground = appWidth*2/4;
  heightFrontBackground = heightFrontDeadSpace;
  //
  xFrontText = appWidth*1/3;
  yFrontText = appHeight*2/3;
  widthFrontText = appWidth*1/3;
  heightFrontText = appHeight*1/4;
  //
  Greetingfont = createFont("Arial", 55);
  //
} //End setup
//
void draw() {
  //
  fill(Gray);
  rect(xFrontDeadSpace, yFrontDeadSpace, widthFrontDeadSpace, heightFrontDeadSpace);
  fill(resetDefaultInk);
  rect(xFrontBackground, yFrontBackground, widthFrontBackground, heightFrontBackground);
  rect(xFrontText, yFrontText, widthFrontText, heightFrontText);
  //
  fill(DarkRed);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(Greetingfont, 50); 
  text(Greetings, xFrontText, yFrontText, widthFrontText, heightFrontText);
  fill(resetDefaultInk);
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
