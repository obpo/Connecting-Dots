
int[] genDot() {
  int x = int(random(0, width));
  int y = int(random(0, height));
  int dx = int(random(1, 4)) * (int(random(1, 3))*2 -3);
  int dy = int(random(1, 4)) * (int(random(1, 3))*2 -3);
  int[] newDot = new int[4];
  
  if (dx == 0 || dy == 0) {
   newDot = genDot();
  } else {
    newDot[0] = x;
    newDot[1] = y;
    newDot[2] = dx;
    newDot[3] = dy;
  }
  return newDot; 
}

void move() {
  for (int i = dots.size()-1; i >= 0; i--) {
    dots.get(i)[0] += dots.get(i)[2];
    dots.get(i)[1] += dots.get(i)[3];
  }
}

void reposition() {
  for (int i = dots.size()-1; i >= 0; i--) {
    if (dots.get(i)[0] < -5) {
      dots.get(i)[0] = width;
      dots.get(i)[3] *= int(random(1, 3))*2 -3;
    }
    
    if (dots.get(i)[0] > width+5) {
      dots.get(i)[0] = 0;
      dots.get(i)[3] *= int(random(1, 3))*2 -3;
    }
    
    if (dots.get(i)[1] < -5) {
      dots.get(i)[1] = height;
      dots.get(i)[2] *= int(random(1, 3))*2 -3;
    }
    
    if (dots.get(i)[1] > height+5) {
      dots.get(i)[1] = 0;
      dots.get(i)[2] *= int(random(1, 3))*2 -3;
    }
  }
}

void replaceDots() {
  for (int i = dots.size()-1; i >= 0; i--) {
    if (dots.get(i)[0] < 0 || dots.get(i)[0] > width || dots.get(i)[1] < 0 || dots.get(i)[1] > width) {
      dots.remove(i);
      dots.add(genDot());
    }
  }
}
