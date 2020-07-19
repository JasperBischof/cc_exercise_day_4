Outercircle Oc1;
Innercircle Ic1;


void setup()
{
  background(0);
  size(1000, 1000);
  Oc1 = new Outercircle(0, 0);
  Ic1 = new Innercircle(0, 0);
}

void draw()
{
  //trail effect setup
  blendMode(SUBTRACT);
  fill(255, 2);
  rect(0, 0, width, height);
  blendMode(BLEND);

  Oc1.display();
  Oc1.move();
  Ic1.display();
  Ic1.move();
}

void mousePressed() {
  saveFrame("frame-####.png");
}
