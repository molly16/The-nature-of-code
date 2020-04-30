class Car {
  
  PVector location;
  PVector velocity;
  PVector accelaration;
  float topspeed;
  
  Car() {
    location = new PVector(0.0, 200.0);
    velocity = new PVector(0.1, 0.0);
    accelaration = new PVector(0.0, 0.0);
    topspeed = 15;
  }
  void update() {
    if (key == CODED) {
      if (keyCode == UP) {
        accelaration.x += 0.001;
      } else if (keyCode == DOWN) {
        accelaration.x -= 0.001;
      }
    }
    velocity.add(accelaration);
    if (velocity.x > topspeed) {
      velocity.x = topspeed;
    } else if (velocity.x < -topspeed) {
      velocity.x = -topspeed;
    }
    location.add(velocity);
    if (location.x > width) {
      location.x = 0.0;
    } else if (location.x < 0.0) {
      location.x = width;
    }
  }
  void display() {
    stroke(0);
    fill(175);
    rect(location.x, location.y, 50, 30);
    ellipse(location.x +5, location.y +30, 10, 10);
    ellipse(location.x +45, location.y +30, 10, 10);
  }
}

//main
Car car;

void setup() {
  size(640, 360);
  car = new Car();
}

void draw() {
  background(255);
  car.update();
  car.display();
}
