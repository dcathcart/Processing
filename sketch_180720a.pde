// Draw evenly-spaced points around the circumference of a circle.

// uses active mode (as opposed to static mode), where you define setup() and draw() functions, and can also write your own.
// active mode also means the draw() function will get called repeatedly, unless you tell it not to with noLoop().

void setup() {
  size(540, 540);
  noLoop();
}

void draw() {
  int x0 = 270;  // centre of circle 
  int y0 = 270;
  
  int radius = 200;
  int num_points = 24;
  float theta = TWO_PI / num_points;

  circle(x0, y0, radius);

  for (int i = 1; i <= num_points; i++) {
    float angle = theta * i;
    float x = x0 + radius * cos(angle);
    float y = y0 + radius * sin(angle);
    
    circle(x, y, 5);
  }
}

void circle(float x, float y, float radius) {
  ellipse(x, y, radius*2, radius*2);
}
