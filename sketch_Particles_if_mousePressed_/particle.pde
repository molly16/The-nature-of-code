class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float lifespan = 255;

 
  Particle(PVector l) {
    location = l.get();
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-1, 1));
  }
 
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    
    lifespan -= 2;
  }
  
  
  boolean isDead() {
    if (lifespan <= 0) {
      return true;
    } else {
      return false; 
    }
  }
  
 
  void display() {
    stroke(0, lifespan);
    strokeWeight(2);
    fill(175, lifespan);
    ellipse(location.x,location.y,8,8);
  }
}
