//Global Variables
color Gray=#AFAFAF;
color DarkRed=#AA021B;
color DarkGreen=#02B703;
color Green=#00DE01;
color resetDefaultInk=#FFFFFF;
int appWidth, appHeight;
int size;
PFont Greetingfont;
PImage FrontImage;
PImage FrontBackgroundImage;
String Greetings = "Happy Holidays!";
String OpenQuestion = "Open";
float xFrontDeadSpace, yFrontDeadSpace, widthFrontDeadSpace, heightFrontDeadSpace;
float xFrontBackground, yFrontBackground, widthFrontBackground, heightFrontBackground;
float xFrontText, yFrontText, widthFrontText, heightFrontText;
float xFrontImage, yFrontImage, widthFrontImage, heightFrontImage;
float xOpenCard, yOpenCard, widthOpenCard, heightOpenCard;
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
  yFrontText = appHeight*3/5;
  widthFrontText = appWidth*1/3;
  heightFrontText = appHeight*1/5;
  //
  xOpenCard = appWidth*2/5;
  yOpenCard = appHeight*10/12;
  widthOpenCard = appWidth*1/5;
  heightOpenCard = appHeight*1/10;
  //
  xFrontImage = xFrontText;
  yFrontImage = appHeight*1/20;
  widthFrontImage = widthFrontText;
  heightFrontImage = appHeight*1/2;
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
  rect(xOpenCard, yOpenCard, widthOpenCard, heightOpenCard);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>xOpenCard && mouseX<xOpenCard+widthOpenCard && mouseY>yOpenCard && mouseY<yOpenCard+heightOpenCard) {
    hoverOverColor = Green;
    fill(hoverOverColor);
    rect(xOpenCard, yOpenCard, widthOpenCard, heightOpenCard);
    fill(resetDefaultInk);
  }
  //
  fill(DarkRed);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(Greetingfont, 50); 
  text(Greetings, xFrontText, yFrontText, widthFrontText, heightFrontText);
  fill(resetDefaultInk);
  //
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(Greetingfont, 50); 
  text(OpenQuestion, xOpenCard, yOpenCard, widthOpenCard, heightOpenCard);
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
