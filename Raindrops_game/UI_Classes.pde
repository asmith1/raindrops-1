

class LoseMenu {
  String[] highScores = new String[20];
  int scoreRank;
  LoseMenu() {
  }
  void display() {
    colorMode(HSB, random(360), 100, 100);
    background(random(360), 100, 100);
    textSize(75);
    textAlign(CENTER);
    fill(random(360), 100, 100);
    text("UR LOZER lOL", width/2, height/2);
    //reset button
    rectMode(CORNER);
    textAlign(CENTER);
    textSize(20);
    colorMode(HSB, 360, 100, 100);
    //Reset button
    fill(240, 100, 100);
    strokeWeight(5);
    stroke(360, 100, 100);
    rect(width/4, height*7/9, width/2, height/9);
    fill(360, 100, 100);
    text("Reset game", width/2, height*15/18);
    if (button(width/4, height*7/9, width/2, height/9)) {
      g.reset();
    }
  }
}
class PauseMenu {
  PauseMenu() {
  }
  void resumeButton() {  
    rectMode(CORNER);
    textAlign(CENTER);
    textSize(20);
    colorMode(HSB, 360, 100, 100);
    //Resume button
    fill(0, 100, 100);
    strokeWeight(5);
    stroke(120, 100, 100);
    rect(width/4, height/9, width/2, height/9);
    fill(120, 100, 100);
    text("Resume", width/2, height*3/18);
    if (button(width/4, height/9, width/2, height/9)) {
      state = gameState;
    }
  }
  void shopButton() {
    rectMode(CORNER);
    textAlign(CENTER);
    textSize(20);
    colorMode(HSB, 360, 100, 100);
    //shop button
    fill(120, 100, 100);
    strokeWeight(5);
    stroke(240, 100, 100);
    rect(width/4, height/3, width/2, height/9);
    fill(0, 100, 100);
    text("Open shop", width/2, height*7/18);
    if (button(width/4, height/3, width/2, height/9)) {
      state = shopState;
    }
  }
  void resetButton() {
    rectMode(CORNER);
    textAlign(CENTER);
    textSize(20);
    colorMode(HSB, 360, 100, 100);
    //Reset button
    fill(240, 100, 100);
    strokeWeight(5);
    stroke(360, 100, 100);
    rect(width/4, height*5/9, width/2, height/9);
    fill(360, 100, 100);
    text("Reset game", width/2, height*11/18);
    if (button(width/4, height*5/9, width/2, height/9)) {
      g.reset();
    }
  }
}
class StartMenu {
  StartMenu() {
  }
  void display() {
    //draws reset button
    colorMode(HSB, 360, 100, 100);
    textSize(20);
    fill(120, 100, 100);
    strokeWeight(5);
    stroke(240, 100, 100);
    rect(width/4, height/3, width/2, height/9);
    fill(240, 100, 100);
    textAlign(CENTER);
    text("START GAME", width/2, height*7/18);
    //control info
    textSize(10);
    textAlign(CENTER);
    fill(255);
    text("CONTROLS: \n Mouse- move catcher \n p - pause \n r - resume \n s - shop \n q - quick reset", width/2, height/2);
  }
  void update() {
    //if clicked, then start game
    if (button(width/4, height/3, width/2, height/9)) {
      state = gameState;
    }
  }
}

