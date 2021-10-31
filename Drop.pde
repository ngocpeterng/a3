class Drop {
  float x = random(width); // x postion of drop
  float y = random(-400,-100); // y position of drop
  float yspeed = random(0.75,2); // speed of the drop
  
  float R = random(255); //randomizing confetti colours
  float G = random(255);
  float B = random(255);
  

  void fall() { // function  to determine the speed of the confetti
    y = y + yspeed; 
    
    if (y > height) { // repositions the drop after it has 'disappeared' from screen
      y = random(-300, -100);
  }
}

  void show() { // function to render the drop onto the screen
    noStroke();
    fill(R, G, B, 80);
    ellipse(x, y, 10, 10); 
  }
}
