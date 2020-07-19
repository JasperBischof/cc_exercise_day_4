class Innercircle {

  float x2;
  float y2;
  float diameter;
  float xoff = 50;
  float yoff = 120;



  Innercircle() {
    diameter = 100;
  }

  Innercircle(int x2, int y2) {
  }

  void display() {
    circle(x2, y2, diameter);
    line(x2, y2, width/2, height/2);
  }

  void move() {
    //interaction, change diameter with mouseY position
    diameter = map(mouseY, 0, height, 50, 100);

    //this equation changes the diameter in a looping pattern 
    //diameter = map(sin(radians(frameCount)*8), -2, 2, 0, 100);
    
    x2 = map(-sin(radians(frameCount)), -1, 1, diameter*4, width-diameter*4);
    y2 = map(cos(radians(frameCount)), -1, 1, diameter*4, height-diameter*4);

    noFill();
    stroke(map(noise(xoff), 0, 1, 0, 255), map(noise(yoff), 0, 1, 0, 255), 255);

    xoff = xoff + 0.01;
    yoff = yoff + 0.01;
  }
}
