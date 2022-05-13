void game() {
  background(darkblue);
  
  //pause button
  stroke(0);
  fill(200);
  rect(50, 700, 150, 80);
  fill(0);
  textSize(50);
  text( "||" , 110, 760);
  
  //scoreboard
  textSize(50);
  fill(255, 170, 255);
  text(score, 700, 700);
  timer = timer -1;
  
  //lives
   text("Lives: " + lives, 50, 50);
 
  //paddle-----------------------------------------------
  
  fill(white);             //draw paddle
  circle(px, py, pd);
  if (akey || leftkey) px = px - 5;   //key movement
  if (dkey || rightkey) px = px + 5;
  
  //ball--------------------------------------------------
  
  fill(white);             //draw ball
  circle(bx, by, bd);
  bx = bx + vx;            //movement
  by = by + vy;
  
  //bouncing
  if (dist(bx, by, px, py) < bd/2 + pd/2) { //paddle bounce
  vx = (bx - px)/10;
  vy = (by - py)/10;
  }
  
  if (by < bd/2) { //bounce off top
  vy = vy * -1;
  }
  if (bx < bd/2 || bx > width-bd/2) { //bounce poff side
  vx = vx * -1;
  }
  
  //bricks----------------------------------
 // circle(x[0], y[0], brickd);
  //circle(x[1], y[1], brickd);
  //circle(x[2], y[2], brickd);
  

  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
    manageBrick(i);
    }
    i++;
  }
//scoring
if (by > 800) {
  lives = lives - 1;
  bx = width/2;
    by = height/2;
  timer = 100;
} else {
  if (lives == 0) mode = GAMEOVER;
  
  
}
  
}

void gameClicks() {
  if (mouseX > 50 && mouseX < 200 && mouseY > 700 && mouseY < 780) {
    mode = PAUSE;
  }
}
 
  void manageBrick (int i) {
    if (y[i] == 100) fill(purple);
    if (y[i] == 200) fill(mango);
    if (y[i] == 300) fill(orange);
    if (y[i] == 400) fill(green);
    circle(x[i], y[i], brickd);
    if (dist(bx, by, x[i], y[i]) < bd/2 + brickd/2) { //brick bounce
      vx = (bx - x[i])/10;
      vy = (by - y[i])/10;
      alive[i] = false;
      score = score + 1;
      if (score == 28) mode = GAMEOVER;
      
      
    }
  }
