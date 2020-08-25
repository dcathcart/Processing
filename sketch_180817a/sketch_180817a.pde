// I discovered the name for this pattern about 2 years after I created it:
// the Mystic Rose. There are plenty of examples if you search online.

// See below for parameters that can be tweaked
// (in particular, number of points around the circle)

PImage backgroundImage;

void setup() {
  backgroundImage = loadImage("FullSizeRender.jpg");
  size(1080, 1080);
  stroke(255);
  noLoop();
}

void draw() {
  image(backgroundImage, 0, 0, width, height);
  
  stroke(255, 240, 240);
  strokeWeight(1.5);
  fill(0);
  
  int numPoints = 20;  // number of points around the circle
  int x0 = 540;        // x position of the circle's centre
  int y0 = 540;        // y position of the circle's centre
  int radius = 300;    // size of the circle
    
  float angle = TWO_PI / numPoints;
  
  float[] x = new float[numPoints];
  float[] y = new float[numPoints];
  
  for (int i = 0; i < numPoints; i++) {
    x[i] = x0 + radius * cos(angle * i);
    y[i] = y0 + radius * sin(angle * i);
  }
 
  for (int i = 0; i < numPoints; i++) {
    for (int j = 0; j < numPoints; j++) {
      line(x[i], y[i], x[j], y[j]); 
    }
  }
 
  for (int i = 0; i < numPoints; i++) {
    circle(x[i], y[i], 3);
  }
 
  // save("sketch_180817a-5.jpg");
}

void circle(float x, float y, float radius) {
  ellipse(x, y, radius*2, radius*2);
}
