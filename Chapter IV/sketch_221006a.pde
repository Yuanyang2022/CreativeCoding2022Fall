float bright;
PImage img;
PVector pos;
int pixID;

void setup(){
  size(498,498);
  background(255);
  frameRate(480);
  img = loadImage("deer1.png");
}

void draw(){
  float a = random(5, width-5);
  float b = random(5, height-5);
  pixID = floor(a) + floor(b) * width;
  bright = brightness(color(img.pixels[pixID]));
  strokeWeight(bright/25);
  stroke(random(120, 255), random(120, 255), random(120, 255));
  line(a, b-bright/50, a, b+bright/50);
  saveFrame();
  
}
