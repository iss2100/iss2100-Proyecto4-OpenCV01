class Figuras3{
  
  float x,y;
  int t;


  void limites(){
    this.x = constrain(this.x,0+this.t/2,width-this.t/2);
    this.y = constrain(this.y,0+this.t/2,height-this.t/2);
  }
}


class Triangulo{
  float x,y;
  float t;
  float dx,dy;
  float v;
  float a;
  
   Triangulo(){
     this.x = random(50,200);
     this.y = random(0,400);
     this.t = 500;
     this.v = 2.0;
     
   
   }
   
   void display(){
     noStroke();
     fill(random(255),random(255),random(255));
    triangle(this.x,this.t,this.y,this.t,this.x,this.y);
   }
   
   void mover(){
     this.x+= this.dx;
     this.y+= this.dy;
     rebota();
   }
   
   void rebota(){
     if (this.x<0+this.t/2 || this.x>width-this.t/2){
       dx*= -1;
     }
     if (this.y<0+this.t/2 || this.y>height-this.t/2){
       dy*=-1;
     }
   }
  
   boolean colision(Figuras a_){
     float c1= this.y -a_.y;
     float c2= this.x - a_.x;
     float h = sqrt(sq(c1)+sq(c2));
     if(h<this.t/2+a_.t/2){
       return true;
     }
     else{
       return false;
     }
   }   
}
ArrayList <Triangulo> triangulos;
