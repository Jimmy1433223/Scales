public void setup() {
  size(600, 600);
  noLoop();
}
void draw() {
  boolean shift = true;
  for (int y = 0; y < 601; y+=30) {
    for (int x = 0; x < 601; x+=30) {
      double r = Math.random()*255;
      double g = Math.random()*255;
      double b = Math.random()*255;
      if (shift==true) {
        scale(x, y+5, (int)r, (int)g, (int)b);
      } else {
        scale(x, y, (int)r, (int)g, (int)b);
      }
      if(shift==true)
        shift=false;
      else
        shift=true;
    }
  }
}

void scale(int x, int y, int r, int g, int b) {
  fill(r, g, b);
  beginShape();
  curveVertex(x, y);
  curveVertex(x, y);
  curveVertex(x-20, y+8);
  curveVertex(x-13, y+27);
  curveVertex(x, y+40);
  curveVertex(x, y+40);
  endShape(); 
  beginShape();
  curveVertex(x, y);
  curveVertex(x, y);
  curveVertex(x+20, y+8);
  curveVertex(x+13, y+27);
  curveVertex(x, y+40);
  curveVertex(x, y+40);
  endShape();
}
