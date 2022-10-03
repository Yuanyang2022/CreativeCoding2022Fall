
point[] p1, p2, p3;

void setup(){
  size(800,500);
  background(0);
  initiatePoint();
}

void initiatePoint(){
  p1 = new point[4];
  p2 = new point[4];
  p3 = new point[1];
  p1[0] = new point(0, 0);
  p1[1] = new point(width, 0);
  p1[2] = new point(0, height);
  p1[3] = new point(width, height);
  p2[0] = new point(width/2, 0);
  p2[1] = new point(0, height/2);
  p2[2] = new point(width, height/2);
  p2[3] = new point(width/2, height);
  p3[0] = new point(width/2, height/2);
}

void draw(){

  for(int i = 0; i <= 3; i++){
    for(int j = 0; j <= 0; j++){
      stroke(random(60, 255), random(60, 255), random(60, 255));
      strokeWeight(1);
      line(p1[i].pX, p1[i].pY, random(0, width), random(0, height));
    }
  }
  
  for(int k = 0; k <= 3; k++){
    for(int l = 0; l <= 1; l++){
      stroke(random(60, 255), random(60, 255), random(60, 255));
      strokeWeight(1);
      line(p2[k].pX, p2[k].pY, random(0, width), random(0, height));
    }
  }
  
  for(int m = 0; m <= 3; m++){
      stroke(random(60, 255), random(60, 255), random(60, 255));
      strokeWeight(1);
      line(p3[0].pX, p3[0].pY, random(0, width), random(0, height));
  }
  saveFrame();
}
