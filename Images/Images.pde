/* Program Notes
 - Finish Nightmode: medium and difficult
 */
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground;
Boolean nightmode=false; //Note: clock and turn on automatically
Boolean brightnessControl=false; //Note: ARROWS
int brightnessNumber=128; //Range:1-255
//
void setup() {
  fullScreen(); //displayWidth, displayHeight
  // Copy Display Orientation
  appWidth = width;
  appHeight = height;
  //
  //Population
  //nightmode=false;
  int hourNightMode = hour(); //24-hour clock
  println( hourNightMode );
  if ( hourNightMode>18 ) {
    nightmode=true;
  } else if ( hourNightMode<05 ) {
    nightmode=true;
  } else {
     nightmode=false;
  }
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../imagesUsed/New folder/cherry-blossom-tree-nx-1920x1080.jpg");
  //
  //DIVs
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
} //End setup
//
void draw() {
  //Daw image 60 
  //background(255); //builti in BUG, 1 pixel
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //
  println( brightnessControl, nightmode, BrightnessNumber);
  if ( brightnessControl==true ) 
  {//Gray Scale: 1/2 tint (i.e 128/256=1/2)
  if ( brightnessNumber<1 ) {
    brightnessNumber=1;
  } else if (brightnessNumber>255) {
    brightnessNumber=255; 
  } else {  
    //Empty ELSE
  }
   tint (255, brightnessNumber);
  }
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
  //Brightness: ARROWS activate brightnessControl, never off
  //NOTE: Nightmode does turn off
  if ( key==CODED && keyCode==UP || keyCode==DOWN ) { //Brightness Keybind
    brightnessControl = true;
    if ( key==CODED && keyCode==UP ) brightnessNumber++ ;
    if ( key==CODED && keyCode==DOWN ) brightnessNumber-- ;
    //CONTINUE HERE with brightness toggles
  }
  //
} //End keyPressed
//
void mousePressed() {
  //
//End MAIN Program
