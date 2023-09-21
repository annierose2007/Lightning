int startX, startY, endX, endY;
void setup(){
  size(400,400);
  background(0,0,0);
  strokeWeight(3);
  startX = 150;
  startY = 150;
  endX = 0;
  endY = 150;
}
void draw(){
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  
  while (endX < width) { 
    endX = startX + (int) (Math.random() * 10); 
    endY = startY + (int) (Math.random () * 19) - 9;
    
    line (startX, startY, endX, endY); 
    startX = endX; 
    startY = endY;
    fill(255,255,255);
    stroke(255,255,255);
    rect(145, 150, 10, 150);
    pushMatrix();
    int i = 150;
    int j = 150;
    translate(i, j); // center of the star
    fill(255,196,196);
    stroke(255,(int)(Math.random()*256),(int)(Math.random()*256));
    beginShape();
    vertex(0, -50);
    vertex(14, -20);
    vertex(47, -15);
    vertex(23, 7);
    vertex(29, 40);
    vertex(0, 25);
    vertex(-29, 40);
    vertex(-23, 7);
    vertex(-47, -15);
    vertex(-14, -20);
    endShape(CLOSE);
    translate(100, 100);
    popMatrix();
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
}

void mousePressed(){
  startX = 150;
  startY = 150;
  endX = 0;
  endY = 150;
}
