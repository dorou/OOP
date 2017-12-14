class Kvadrat {
  float x, y, s;
  Kvadrat(float _x, float _y, float _s){
    this.x = _x;
    this.y = _y;
    this.s = _s;
  }
  
  
  void draw() {
    rect(this.x,this.y,this.s,this.s);
    
  }
  
  void right(float _s) {
    this.x+=_s;
  }
}

class Clr extends Kvadrat {
 color cl;
 Clr(float _x, float _y, float _s, color _cl){
 super( _x, _y, _s);
 this.cl= _cl;

}
 void draw() {
 fill(this.cl);
    rect(this.x,this.y,this.s,this.s);
    
  }
}


Clr[] k_array;

void setup()
{
  size(600,600);
  
  k_array = new Clr[10];
  for(int i=0; i<10; i++){
    color cv;
    cv=color (random(244),random(244),random(244));
    k_array[i] = new Clr(random(width), random(height), 100.0,cv);
  }
}

void draw() //<>//
{
  background(0);
  for(int i=0; i<10; i++){
     k_array[i].draw();
     k_array[i].right(random(5));
  }
}