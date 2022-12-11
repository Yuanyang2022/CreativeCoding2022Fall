import controlP5.*;

ControlP5 cp5;

PImage img;
int size = 1;

void setup(){
  size(498,498);
  background(255);
  frameRate(480);
  img = loadImage("1.png");
  
  cp5 = new ControlP5(this);
  
  cp5.addSlider("size")
    .setPosition(20, 20)
    .setSize(200, 20)
    .setRange(1, 20)
    .setValue(1)
    ;
}

void draw(){

  for(int i = 2*size; i < width-2*size; i=i+2*size){
    for(int j = 2*size; j < height-2*size; j=j+2*size){
      beginShape(QUADS);
      stroke(255);
      strokeWeight(1);
      fill(brightness(color(img.pixels[floor(i)+floor(j)*width])));
      vertex(i-2*size, j-2*size);
      vertex(i-2*size, j+2*size);
      vertex(i+2*size, j+2*size);
      vertex(i+2*size, j-2*size);
      endShape();
    }
  }
  

  //saveFrame();
  
}
