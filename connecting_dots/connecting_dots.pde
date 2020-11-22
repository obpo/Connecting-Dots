
final int radius = 100;

final int DOTS = 100;
ArrayList<int[]> dots = new ArrayList();


void setup() {
  size(1024, 512);
  //noLoop();
  
  stroke(210);
  fill(210);
  
  frameRate(40);
  
  for (int i = 0; i < DOTS; i++) {
    dots.add(genDot());
  }
}

void draw() {
  background(150);
  

  drawCicles();
  drawLines();
  
  move();
  reposition();
  
}
