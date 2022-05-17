void gameover() {
  background(88, 0, 242);
  image(gold, 100, 400, 100, 100);
  image(gold, 700, 300, 70, 70);
  image(gold, 500, 100, 90, 90);
  image(gold, 200, 100, 50, 50);
  image(gold, -30, 250, 70, 70);
  image(gold, 500, 350, 40, 40);
  image(gold, 700, 700, 100, 100);
  image(gold, 600, 550, 60, 60);
  image(gold, 350, 650, 80, 80);
  image(gold, 100, 700, 50, 50);
   
   if (score > 27) {
      rect(160, 230, 490, 120);
    textSize(80);
    fill(85, 227, 119);
    text("YOU WIN", 200, 320);
 } else {     

    
    rect(160, 230, 490, 120);
    textSize(80);
    fill(211, 2, 2);
    text("YOU LOSE", 180, 320);
 }
    
  //Return to Game button
  //tactile - Return to Game button
  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    fill(200);
  } else {
    fill(146, 240, 140);
  }
  rect(300, 400, 200, 100);
  fill(0);
  textSize(30);
  text("RETURN", 340, 460); 
}

void gameoverClicks() {
   if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    setup();
   }
}
