class Smoke {
  float x = width/2;
  float y = random(70,85);
  float yspeed = random(0.5,1);
  float a = random(7,20);
  
  
  void rise() {
  y = y - yspeed;
  
  if (y < 0) {
    y = random(50, 80);
  }
}


  void show(){
  noStroke();
  fill(#a3a3a3, random(50,100));
  ellipse(x,y,a,a);
  } 
}
