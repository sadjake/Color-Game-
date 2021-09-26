void gameover() {
 background(0);
 size(800,800);
 textFont(delight);
 
 if(highscore<score){
   highscore = score;
 }else { 
   highscore = highscore;
 }
 
 text("High Score:" + highscore, width/2, 300);
 text("Score:" + score, width/2, 600);
 fill(255);
 textSize(10);
 textFont(delight);
 text("Game over",400,400);
}

void gameoverClicks(){
 mode = INTRO; 
}
