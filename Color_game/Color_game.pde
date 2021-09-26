// Jake Choi
// September 21, 2021
// Color Game

// Mode Framework
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;
final int ALTERNATEGAMEOVER = 3;
boolean tkey, fkey;

//colour variables
color blue = color(0, 0, 255);
color red = color(255, 0, 0);
color yellow = color(255, 255, 0);
color green = color(0, 255, 0);
color purple = color(255, 0, 255);
color orange = color(255, 150, 30);

// score system 
int score = 3;
int highscore = 0;
int countdowntimer = 240;

// font
PFont delight;

//intro
PImage[] gif;
int f = 8;
int numberOfFrames;

//array
String[]words;
color []colors;
int w = int(random(0, 6));
int c = int(random(0, 6));
int cc = int(random(2,4));

void setup() {
  size(800, 800);
  delight = createFont("Delight Candles .ttf", 50);
  mode = INTRO;
  textAlign (CENTER,CENTER);

  //array
  words = new String[7];
  colors = new color[7];
  words [0] = "red";
  colors [0] = red;
  words [1] = "blue";
  colors [1] = blue;
  words [2] = "yellow";
  colors [2] = yellow;
  words [3] = "green";
  colors [3] = green;
  words [4] = "purple";
  colors [4] = purple;
  words [5] = "orange";
  colors [5] = orange;

  //gif
  int i = 0;
  numberOfFrames = 46;
  gif = new PImage[46];
  while (i < numberOfFrames ) {
    gif[i] = loadImage("frame_"+i+"_delay-0.1s.gif");
    i = i + 1;
  }
}

void draw () {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == ALTERNATEGAMEOVER) {
    alternategameover();
  } else {
    println("Error:Mode =" + mode);
  }
}
