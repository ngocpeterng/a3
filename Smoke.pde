class Smoke {
  float x = width/2;
  float y = random(70,85);
  float yspeed = random(0.5,1);
  float a = random(5,20);
  
  
  void rise() {
  y = y - yspeed;
  
  if (y < 0) {
    y = random(50, 80);
  }
}


  void show(){
  noStroke();
  fill(#ffffff, random(50,100));
  ellipse(x,y,a,a);
  } 
}
