void intro () {
  size(800, 800);

  // timer and score
  score = 0;
  countdowntimer = 120;
  w = int(random(0, 6));
  c = int(random(0, 6));

  //gif
  int i = 7;
  println(f);
  image(gif[f], 0, 0, width, height);

  //mod
  if (frameCount % 2 == 0) f = f + 1; 
  if (f == numberOfFrames) f = 0;
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(10);
  textFont(delight);
  text("Colour Game", width/2, height/2);
}

void introClicks() {
  mode = GAME;
}
