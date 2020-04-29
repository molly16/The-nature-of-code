PVector location;
PVector velocity;
int z = 360;

void setup() {
  size(640, 360,P3D);
  location = new PVector(width/2, height/2, z/2);
  velocity = new PVector(2.5,5,3);
}
 
void draw() {
  background(255);
 
  location.add(velocity);
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }
  if ((location.z > z) || (location.z < 0)) {
    velocity.z = velocity.z * -1;
  }

  noStroke();
  lights();
  translate(location.x, location.y, location.z);
  sphere(3);
}
