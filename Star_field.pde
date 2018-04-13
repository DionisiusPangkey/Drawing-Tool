  Star[] stars = new Star[800];
  int[] randomcolor = new int[]{ #164352,#2643AB,#3BED45,#4FACD1,#543210, #6FFBC1, #FF0000 };
boolean strat = true;
boolean release = false;
float speed;
int topx = 400;
int topy = 400;

void setup() {
  size(800, 800);
  
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
   
   
  }
}

void draw() {
  background(0);
  
  
 
   
  
   
   fill(255, 255, 255);
   if (strat){
     textSize(50);
     text("WELCOME", 280, 420);
     textSize(20);
     text("Press SPACE to start", 305, 460);
   }
    
    println(strat);

  speed = map(mouseY, 0, height, 0, 50);
  
  
  translate(topx, topy);
   for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    if (strat){
      stars[i].show(); 
    }
}
 if(release&& !strat){
 speed = map(mouseY, 0, height, 0, 50);
  
  
  translate(topy, topx);
   for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    
    stars[i].show(); 
    
}
   
 }
}
//--------------------------------------- switch
 boolean status(boolean x){
  if (x == false){
        return true;
      } else {
        return false;
      }   
  }

void mouseReleased(){
topx = mouseX;
topy = mouseY;
release = status(release);

}


void keyReleased(){
  
  if(key == 'r' || key == 'R'){
     for (int i = 0; i < stars.length; i++) {
      stars[i].setWarna(#FF0000);
    }
  } else if(key == 'g' || key == 'G'){
  for (int i = 0; i < stars.length; i++) {
      stars[i].setWarna(#00FF00);
  }
 } else if(key == 't' || key == 'T'){
   int x = 0;
  for (int i = 0; i < stars.length; i++) {
      stars[i].setWarna(randomcolor[x++]);
      if(x >= 7 ){
      x = 0;
      }
    
  }
 } else if(key == ' '){
 strat = status(strat);
 
 }
}