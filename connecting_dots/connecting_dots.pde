
final int radius = 110;
final int amount = 250;
ArrayList<int[]> dots = new ArrayList();


void setup() {
  //size(1024, 512);
  fullScreen();
  
  stroke(210);
  fill(210);
  frameRate(40);
  
  for (int i = 0; i < amount; i++) {
    dots.add(genDot());
  }
  
}

void draw() {
  background(150);
  
  reposition();
  drawCicles();
  drawLines();
  move();
}
