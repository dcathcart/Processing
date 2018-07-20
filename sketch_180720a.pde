// Draw evenly-spaced points around the circumference of a circle.

// uses active mode (as opposed to static mode), where you define setup() and draw() functions, and can also write your own.
// active mode also means the draw() function will get called repeatedly, unless you tell it not to with noLoop().

PImage background;

void setup() {
  background = loadImage("IMG_8106_cropped.jpg");
  size(1080, 1080);
  stroke(255);
  strokeWeight(8);
  noLoop();
}

void draw() {
  image(background, 0, 0, width, height);
  
  int x0 = width / 2; 
  int y0 = height / 2;
  int radius = 450;
  
  int num_points = 24;
  float theta = TWO_PI / num_points;
  
  noFill(); 
  circle(x0, y0, radius);
    
  fill(0);
  for (int i = 1; i <= num_points; i++) {
    float angle = theta * i;
    float x = x0 + radius * cos(angle);
    float y = y0 + radius * sin(angle);
    circle(x, y, 16);
  }
}

void circle(float x, float y, float radius) {
  ellipse(x, y, radius*2, radius*2);
}
