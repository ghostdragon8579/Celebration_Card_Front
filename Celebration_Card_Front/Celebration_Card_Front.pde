//Global Variables
color Gray=#AFAFAF;
color DarkRed=#AA021B;
color resetDefaultInk=#FFFFFF;
int appWidth, appHeight;
int size;
PFont Greetingfont;
PImage FrontImage;
PImage FrontBackgroundImage;
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
  String open = "/";
  String ImagesPath = open;
  String Imagefolder = "Images for the Celebration Card3";
  String christmastreeImage = "Christmas Tree.jpg";
  //String ImageUsed = "";
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
  FrontBackgroundImage = loadImage(ImagesPath + Imagefolder + open + christmastreeImage);
  //
  xFrontText = appWidth*1/3;
  yFrontText = appHeight*2/3;
  widthFrontText = appWidth*1/3;
  heightFrontText = appHeight*1/4;
  //
  xFrontImage = xFrontText;
  yFrontImage = appHeight*1/20;
  widthFrontImage = widthFrontText;
  heightFrontImage = appHeight*3/5;
  //FrontImage = loadImage(ImagesPath + Imagefolder + open + ImageUsed);
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
  image(FrontBackgroundImage, xFrontBackground, yFrontBackground, widthFrontBackground, heightFrontBackground);
  rect(xFrontText, yFrontText, widthFrontText, heightFrontText);
  rect(xFrontImage, yFrontImage, widthFrontImage, heightFrontImage);
  //
  fill(DarkRed);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(Greetingfont, 50); 
  text(Greetings, xFrontText, yFrontText, widthFrontText, heightFrontText);
  fill(resetDefaultInk);
  //
  //image(FrontImage, xFrontImage, yFrontImage, widthFrontImage, heightFrontImage);
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
