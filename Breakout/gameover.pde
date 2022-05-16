void gameover() {
  background(255);
  
   
   if (score > 27) {
      rect(160, 230, 490, 120);
    textSize(80);
    fill(255, 170, 255);
    text("YOU WIN", 200, 320);
 } else {     

    
    rect(160, 230, 490, 120);
    textSize(80);
    fill(154, 234, 111);
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
