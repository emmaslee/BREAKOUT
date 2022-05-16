void intro() {
  background(88, 0, 242);
  fill(0);

  
   // Game Title
  strokeWeight(1); 
  fill(0);
  textSize(72);
  text("BREAKOUT", 180, 300);
  image(gold, 100, 400, 100, 100);
  image(gold, 700, 300, 70, 70);
  image(gold, 500, 100, 90, 90);

//Start Button
//tactile - start button
 //tactile - Start button
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    fill(200);
  } else {
    fill(146, 240, 140);
  }
  rect(300, 500, 200, 100);
  fill(0);
  textSize(30);
  text("START", 350, 565);
}

void introClicks() {
    if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
  }
}
