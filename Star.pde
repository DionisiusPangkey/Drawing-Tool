class Star {
  float x;
  float y;
  float z;
  
  float pz;
  int warna;
  
  Star () {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    pz = z;
    
    warna = #FFFFFF;
  }
  
  void update(){
    z = z - speed;
    if (z < 1) {
      z = width;
      x = random(-width, width);
    y = random(-height, height);
    pz = z;
    }
  }
  
  void setWarna(int b){
  
  warna = b; 
    
  }
  
  void show() {
    fill(warna);
    noStroke();
    
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, width);
    
    float r = map(z, 0, width, 16, 0);
    //ellipse(sx,sy,r,r);
    
    float px = map(x / pz, 0, 1, 0, width);
    float py = map(y / pz, 0, 1, 0, height);
    
    pz = z;
    
    stroke(warna);
    line(px, py, sx, sy);
    
    
  }
}
 