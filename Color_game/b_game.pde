void game() {
  size(800, 800);
  
  // MATCH
  fill(255);
  rect(0, 0, 400, 800);
  // NO MATCH
  fill(0);
  rect(400, 0, 400, 800);
  
  //Score
  textSize(10);
  textFont(delight);
  fill (0);
  text("MATCH", 200, 400);
  fill (255);
  text("NO MATCH", 600, 400);
  
  //colours
  fill(colors[c]);
  textSize(countdowntimer);
  text(words[w], 400, 200);
  textSize(10);
  textFont(delight);
  text("Score:" + score, width/2, 700);

  //COUNTDOWN TIMER
  countdowntimer = countdowntimer - 1;
  if (countdowntimer == 0) {
    mode = ALTERNATEGAMEOVER; 
  }
}
void gameClicks() {
  if (mouseX<width/2) {
    //match
    if (w==c) {
      cc = int(random(2, 4));     
      countdowntimer = 120;
      score = score +1;
      if (cc>=3) {
        w = int(random(0, 6));
        c = w;
      } else {
        w = int(random(0, 6));
        c = int(random(0, 6));
      }
    } else {
      mode = GAMEOVER;
    }
    //nomatch
  } else {
    if (w==c) {
      mode = GAMEOVER;
    } else {
      c = int(random(2, 4));
      countdowntimer = 120;
      score = score +1;
      if (cc>=3) {
        w = int(random(0, 6));
        c = w;
      } else {
        w = int(random(0, 6));
        c = int(random(0, 6));
      }
    }
  }
}
