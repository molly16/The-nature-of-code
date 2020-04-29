class walker {
  PVector location;
  int r;
  int g;
  int b;

  walker() {
    location = new PVector(int(random(width)), int(random(height)));
    r = int(random(255));
    g = int(random(255));
    b = int(random(255));
  }

  void display() {
    stroke(r, g, b);
    point(location.x, location.y);
    //fill(r, g, b);
    //ellipse(x, y, 2, 2);
  }

  void step() {
    int stepx = int(random(3))-1;
    int stepy = int(random(3))-1;
    location.x += stepx;
    location.y += stepy;
  }
}

int count = 1000;
walker[] w_list = new walker[count];

void setup() {
  size(640, 500);
  frameRate(1000);
  for (int i = 0; i < count; i++) {
    w_list[i] = new walker();
  }
  background(255);
}

void draw() {
  for (int i = 0; i < count; i++) {
    w_list[i].step();
    w_list[i].display();
  }
}
