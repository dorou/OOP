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

Clr[] k_array;

void setup()
{
  size(600,600);
  
  k_array = new Clr[10];
  for(int i=0; i<10; i++){
       color _cl=color(random(width), random(height),random(height));
   fill(_cl);
    k_array[i] = new Clr(random(width), random(height), 100.0,_cl);
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

class Clr extends Kvadrat {
 color cl;
 Clr(float _x, float _y, float _s, color _cl){
 super( _x, _y, _s);
 this.cl= _cl;

}
 void draw() {
 
    rect(this.x,this.y,this.s,this.s);
  }
}