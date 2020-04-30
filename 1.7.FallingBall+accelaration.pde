class Mover {
  
  float aInitial = 0.05;
  PVector location;
  PVector velocity;
  PVector accelaration;
  
  void update() {
    location.add(velocity);
    velocity.add(accelaration);
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
  }
  
  Mover() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(0.0, 0.0);
    accelaration = new PVector(aInitial, aInitial);
  }
  
  void check_edges() {
    if (location.x > width) {
      location.x = 0;
      velocity = new PVector(0.0, 0.0);
    } else if (location.x < 0) {
      location.x = width;
    }
    if (location.y > height) {
      location.y = 0;
      velocity = new PVector(0.0, 0.0);
    } else if (location.y < 0) {
      location.y = height;
      velocity = new PVector(0.0, 0.0);
    }
  }
}

//main
Mover mover;

void setup() {
  size(640, 360);
  mover = new Mover();
}

void draw() {
  background(255);
  mover.update();
  mover.check_edges();
  mover.display();
}
