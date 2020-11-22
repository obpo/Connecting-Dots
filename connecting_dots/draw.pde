
void drawCicles() {
  for (int i = dots.size()-1; i >= 0; i--) {
    circle(dots.get(i)[0], dots.get(i)[1], 10);
  }
}

void drawLines() {
  int dx;
  int dy;
  
  for (int i = dots.size()-1; i >= 0; i--) {
    for (int j = dots.size()-1; j >= 0; j--) {
      dx = dots.get(i)[0] - dots.get(j)[0];
      dy = dots.get(i)[1] - dots.get(j)[1];
      
      if (sqrt(pow(dx, 2)+pow(dy, 2)) <= radius) {
        line(dots.get(i)[0], dots.get(i)[1], dots.get(j)[0], dots.get(j)[1]);
      }
    }
  }
}
