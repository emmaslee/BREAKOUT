void gameover() {
  background(255);
  
  fill(0);
   textSize(60);
   text("GAMEOVER, YOU WIN", 120, 150);
    
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
