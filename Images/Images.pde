//Global Variablesqu
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground;
Boolean nightmode=false; //Note: clock and turn on automatically
//
void setup() {
  fullScreen(); //displayWidth, displayHeight
  // Copy Display Orientation
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../imagesUsed/New folder/download.jpeg");
  //
  //DIVs
  //rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
} //End setup
//
void draw() {
  //background(255); //builti in BUG, 1 pixel
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //
  //if ( [BRIGHTNESS, see KeyPressed] ) tint (255, 128); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  //if ( nightmode==true )  tint ( 64 , 64, 40 ); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  if ( nightmode==true ) {
    tint ( 64, 64, 40 );
    println(nightmode);
  } else {
    noTint ( ); //See Processing DOC
    println(nightmode);
  }
  image(picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
} //End draw
//
void keyPressed() {
 //Brightness
 //
 if ( key=='n' || key=='N' ) { //Nightmode, basic control is Boolean
   if ( nightmode==true ) {
   nightmode = false;
   } else {
   nightmode = true;
   } 
 }
 
 if ( nightmode==true ) { //Nightmode, basic control is Boolean
   nightmode = false;
 } else {
   nightmode = true;
 }
 //
} //End keyPressed
//
//End MAIN Program