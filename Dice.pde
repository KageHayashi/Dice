void setup() {
  size(702, 540);
  noLoop();
}

void draw() {
  background(145);
  int total = 0;
  for (int y = 0; y < 500; y = y +50) {
    for (int x = 0; x < 700; x = x + 50) {
        Die core = new Die(x, y);
      core.show();
      core.roll();
    if (core.dot == 1) {
      total = total + 1;
    } 
    else if (core.dot == 2) {
      total = total + 2;
    } 
    else if (core.dot == 3) {
      total = total + 3;
    } 
    else if (core.dot == 4) {
      total = total + 4;
    } 
    else if (core.dot == 5) {
      total = total + 5;
    } 
    else if (core.dot == 6) {
      total = total + 6;
    }
  }
  }
  text("Total: " + total, 335, 520);
}


void mousePressed() {
  redraw();
}

class Die {
  int myX;
  int myY;
  int dot;

  Die(int x, int y) {
    myX = x;
    myY = y;
  }

  void roll() {
    //dot = 6;
    dot = (int)(Math.random()*6 + 1);
    fill(255);
    if (dot == 1) {
      ellipse(myX+25, myY+25, 12, 12);
    } else if (dot == 2) {
      ellipse(myX+15, myY+35, 12, 12);
      ellipse(myX+35, myY+15, 12, 12);
    } else if (dot == 3) {
      ellipse(myX+12.5, myY+37.5, 12, 12);
      ellipse(myX+25, myY+25, 12, 12); //center dot
      ellipse(myX+37.5, myY+12.5, 12, 12);
    } else if (dot == 4) {
      ellipse(myX+12.5, myY+37.5, 12, 12);
      ellipse(myX+37.5, myY+12.5, 12, 12);
      ellipse(myX+12.5, myY+12.5, 12, 12);
      ellipse(myX+37.5, myY+37.5, 12, 12);
    } else if (dot == 5) {
      ellipse(myX+12.5, myY+37.5, 12, 12);
      ellipse(myX+37.5, myY+12.5, 12, 12);
      ellipse(myX+12.5, myY+12.5, 12, 12);
      ellipse(myX+37.5, myY+37.5, 12, 12);
      ellipse(myX+25, myY+25, 12, 12);
    } else if (dot == 6) {
      ellipse(myX+12.5, myY+11, 12, 12);
      ellipse(myX+12.5, myY+25, 12, 12);
      ellipse(myX+12.5, myY+39, 12, 12);
      ellipse(myX+37.5, myY+11, 12, 12);
      ellipse(myX+37.5, myY+25, 12, 12);
      ellipse(myX+37.5, myY+39, 12, 12);
    }
  }

  void show() {
    fill(5, 154, 244);
    rect(myX, myY, 50, 50,10);
  }
}