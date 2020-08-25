
PImage backgroundImage;

void setup() {
  //backgroundImage = loadImage("IMG_8006-2.jpg");
  backgroundImage = loadImage("FullSizeRender.jpg");
  //size(1080, 1440);
  size(1080, 1080);
  stroke(255);
  noLoop();
}

void draw() {
  image(backgroundImage, 0, 0, width, height);
  
  stroke(255, 240, 240); //255
  strokeWeight(1.5); //1.5
  fill(0);
  
  int numPoints = 20; //30
  int x0 = 540;
  int y0 = 540; //720
  int radius = 300; //450
    
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
    circle(x[i], y[i], 3); //4
  }
 
  save("sketch_180817a-5.jpg");
}

void circle(float x, float y, float radius) {
  ellipse(x, y, radius*2, radius*2);
}
