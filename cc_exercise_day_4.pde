float x;
float y;
float diameter;
float xoff = 50;
float yoff = 120;

void setup()
{
  background(0);
  size(1000, 1000);

  x = width / 2;
  y = height / 2;
  diameter = 100;

  noiseSeed(66666);
}

void draw()
{
  blendMode(SUBTRACT);
  fill(255, 2);
  rect(0, 0, width, height);
  blendMode(BLEND);

  diameter = map(sin(radians(frameCount)*16), -2, 2, 0, 100);
  x = map(sin(radians(frameCount)), -1, 1, 100, width-diameter);
  y = map(cos(radians(frameCount)), -1, 1, 100, height-diameter);
  noFill();
  stroke(map(noise(xoff), 0, 1, 0, 255), map(noise(yoff), 0, 1, 0, 255), 255);

  xoff = xoff + 0.01;
  yoff = yoff + 0.01;

  circle(x, y, diameter);
  line(x, y, width/2, height/2);

  print(diameter);
}
