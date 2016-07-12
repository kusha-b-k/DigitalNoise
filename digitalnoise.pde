void setup() {
  size(500, 500);
  noStroke();
  fill(#ffffff, 110);
}
 
void draw() {
  background(#330000);
  translate(width/2, height/2);
  for (float angle = 90; angle < 110; angle += 1.5) {
    for (float k = 1; k < 2; k += 0.2) {
      float an = k*180;
      float t = angle+frameCount*1.5+an;
      float x = sin(t*17) + sin(61*t)/2;
      float y = sin(14*t) + cos(t) + cos(6*t)/2 + cos(14*t)/3;
      float s = cos(radians(angle))*k*17;
      stroke(10);
      ellipse(x*k*18, y*k*8, y*3, s*33);
    }
  }
}