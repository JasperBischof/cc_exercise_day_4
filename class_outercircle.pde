class Outercircle {

  float x;
  float y; 
  float diameter;
  float xoff = 50;
  float yoff = 120;



  Outercircle() {
    x = width / 2;
    y = height / 2;
    diameter = 100;
  }

  Outercircle(int x, int y) {
  }

  void display() {
    circle(x, y, diameter);
    line(x, y, width/2, height/2);
  }

  void move() {
    //interaction, change diameter with mouseY position
    diameter = map(mouseY, 0, height, 50, 100);

    //this equation changes the diameter in a looping pattern 
    //diameter = map(sin(radians(frameCount)*8), -2, 2, 0, 100);
    x = map(sin(radians(frameCount)), -1, 1, diameter, width-diameter);
    y = map(cos(radians(frameCount)), -1, 1, diameter, height-diameter);

    noFill();
    stroke(map(noise(xoff), 0, 1, 0, 255), map(noise(yoff), 0, 1, 0, 255), 255);

    xoff = xoff + 0.01;
    yoff = yoff + 0.01;
  }
}
