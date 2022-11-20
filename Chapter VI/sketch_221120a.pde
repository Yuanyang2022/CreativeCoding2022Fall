PVector locationA;
PVector locationB;
PVector velocityA;
PVector velocityB;
PVector C;
PVector D;
 
void setup() {
  size(640,360);
  locationA = new PVector(random(0,640),random(0,360));
  locationB = new PVector(random(0,640),random(0,360));
  velocityA = new PVector(2.5,5);
  velocityB = new PVector(2.5,5);
}
 
void draw() {
  background(255);
 
  locationA.add(velocityA);
  locationB.add(velocityB);
  
  PVector C = new PVector(locationA.x,locationA.y);;
  PVector D = new PVector(locationB.x,locationB.y);

  C = C.sub(D);
  if(C.mag()<=50){
    velocityA.add(C);
    velocityA.normalize();
    velocityA.setMag(5.59);
    velocityB.sub(C);
    velocityB.normalize();
    velocityB.setMag(5.59);
  }
  
  if ((locationA.x > width) || (locationA.x < 0)) {
    velocityA.x = velocityA.x * -1;
  }
  if ((locationA.y > height) || (locationA.y < 0)) {
    velocityA.y = velocityA.y * -1;
  }
   if ((locationB.x > width) || (locationB.x < 0)) {
    velocityB.x = velocityB.x * -1;
  }
  if ((locationB.y > height) || (locationB.y < 0)) {
    velocityB.y = velocityB.y * -1;
  }
 
  stroke(0);
  fill(175);
  ellipse(locationA.x,locationA.y,50,50);
  fill(175);
  ellipse(locationB.x,locationB.y,50,50);
  
  //println("A"+locationA);
  //println("B"+locationB+D);
  //println("distance"+C);
}
