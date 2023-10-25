/* Program Notes
- Finish Nightmode: medium and difficult
*/
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float animeXrect, animeYrect, animeWidthRect, animeHeightRect, animeWidth, animeHeight;
float gunXrect, gunYrect, gunWidthRect, gunHeightRect, gunWidth, gunHeight;
PImage picBackground, animeForeground, gunPortrait;
//
void setup() {
  fullScreen(); //displayWidth, displayHeight
  // Copy Display Orientation
  appWidth = width;
  appHeight = height;
  //
  //Population
  // DIV rect() Variable Population
  //Origonal Aspect Ratios of Images to Change
  //Compare the side Lengths to see which is bigger
  //"Compress" the biggest side into the rect()
  //Multiple the Image's Aspect Ratio to the smaller side
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  animeXrect = appWidth*1/14;
  animeYrect = appHeight*1/8;
  animeWidthRect = appWidth*2.25/7; // 2/4
  animeHeightRect = appHeight*1/4; // 2/8
  gunXrect = animeXrect;
  gunYrect = appHeight*5/8; 
  gunWidthRect = animeWidth;
  gunHeightRect = animeHeight;
  //Aspect Ratio Change
  animeWidth = 1200.0;
  animeHeight = 673.0;
  gunWidth = 3000.0;
  gunHeight = 3000.0;
  float aspectRatio = 0.0; //Local Variables
   if ( animeWidth >= animeHeight ) { //ANIME Image if Landscape
   //Comparison Verification
   println("ANIME is Landscsape");
   aspectRatio = animeHeight / animeWidth; // smaller/larger=0 if int
   //memory of smaller side
   animeWidth = animeWidthRect;
   animeHeight = aspectRatio * animeWidth;
   if ( animeHeight > animeHeightRect ) { //ERROR Catch is animeHeight > animeHeightRect
      println("ERROR: Aspect Calculation Too Big");
     }
   } else { //ANIME Image if Potrait
   //Comparison Verification
   println("ANIME is Potrait");
   //Repeat Aspect Ratio
   //Comparison Verification
   aspectRatio = animeHeight / animeWidth; {// smaller/larger=0 if int
   //memory of smaller side
   animeHeight = animeWidthRect;
   animeHeight = aspectRatio * animeWidth;
   //if () {} //ERROR Catch is bikeHeight > bikeHeightRect 
  } //End IF
  if ( gunWidth >= gunHeight ) { //GUN Image if Landscape
  //Comparison Verification
  println("GUN is Landscape");
  //Repeat Aspect Ratio
  } else { //GUN Image if Potrait
  //Comparison Verification
  println("GUN is Portrait");
    //Repeat Aspect Ratio
    aspectRatio = gunWidth / gunHeight; // smaller/larger=0 if int,
    //memory of smaller side
    gunHeight = gunHeightRect;
    gunHeight = aspectRatio * gunWidth;
    if ( gunWidth > gunWidthRect ) {} //ERROR Catch is gunHeightRect . gunHeight
    println("ERROR: Aspect Calculation Too Big");
    }
  } //End if
  //Error Check of Smaller Dimension
  //
  //Concatenation of Pathways
  String up = "..";
  String open = "/";
  String imagesPath = up + open + up + open;
  String landScapeImage = "imagesUsed/Landscape & Square Images/";
  String portraitImage = "imagesUsed/Portrait/";
  String cherryImage = "cherry-blossom-tree-nx-1920x1080.jpg";
  String animeImage = "pngtree-anime-of-a-grey-girl-hd-wallpaper-picture-image_3173535.jpg";
  String gunImage = "sbfakglf3z651.jpg";
  picBackground = loadImage( imagesPath + landScapeImage + cherryImage ); //Concatenation
  animeForeground = loadImage( imagesPath + landScapeImage + animeImage );
  gunPortrait = loadImage( imagesPath + portraitImage + gunImage );
  //
  //DIVs
  //rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //rect( animeXrect, animeYrect, animeWidth, animeHeight ); //anime image
  //rect( gunXrect, gunYrect, gunWidth, gunHeight ); //Gun Image
  //
} //End setup
//
void draw() {
  //background(255); //builti in BUG, 1 pixel
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  rect( animeXrect, animeYrect, animeWidthRect, animeHeightRect );
  image( animeForeground, animeXrect, animeYrect, animeWidth, animeHeight );
  //
  rect( gunXrect, gunYrect, gunWidthRect, gunHeightRect );
  image( gunPortrait, animeXrect, animeYrect, animeWidth, animeHeight);
  //
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
