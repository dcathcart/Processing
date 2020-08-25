size(1080, 1080);  // instagram image size
background(250);  // almost white background
stroke(color(56, 56, 80));  // dark grey-ish blue-ish line colour

// rect(40, 40, 1000, 1000);  // 1000x1000 box to contain the image
// think 2 lines; one down each side of the image
// break each line into points
// draw a line from each point in line 1 to each point in line 2

int x1 = 40;  // x-coord for line 1
int x2 = 1040;  // x-coord for line 2
int y_init = 40;
int y_limit = 1040;
int y_increment = 40;

for (int y1 = y_init; y1 <= y_limit; y1 += y_increment) {
  for (int y2 = y_init; y2 <= y_limit; y2 += y_increment)
    line (x1, y1, x2, y2);
}
