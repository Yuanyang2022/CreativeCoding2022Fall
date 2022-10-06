import java.util.Random;

void setup(){
  size(800,500);
  background(255);
}



void draw(){
  float a = random(0, width);
  float b = random(0, height);
  strokeWeight(0);
  fill(random(60, 255), random(60, 255), random(60, 255));
  rect(a, b, random(0, width - a), random(0, height - b));
  strokeWeight(random(0, 20));
  boolean isVertical = true;
  float e = random(0, 10);
  if(e >= 5){
    isVertical = true;
  }
  if(e < 5){
    isVertical = false;
  }
  if(isVertical == true){
    float c = random(0, width);
    line(c, 0 , c, height);
  }
  if(isVertical == false){
    float d = random(0, height);
    line(0, d, width, d);
  }
  
}
