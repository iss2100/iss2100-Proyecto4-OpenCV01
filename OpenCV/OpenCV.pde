import processing.video.*;

//importar librerias


import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;



filtros Red;
filtros Green;
filtros Blue;
filtros Yellow;
filtros Pink;
filtros Gray;
filtros Orange;
filtros Cyan;
filtros cuadrado;
filtros triangulo;
filtros circulo;

int pantalla;
pantalla camara1;


void setup(){
    
    size(640, 480);
    video = new Capture(this, 640/2, 480/2);
    
    elipses = new ArrayList <Elipse>();
     cuadros = new ArrayList <Cuadro>();
     triangulos = new ArrayList<Triangulo>();
  
  for (int i= 0; i<20; i++){
    elipses.add(new Elipse());
  }
  
  for (int i= 0; i<20; i++){
   cuadros.add(new Cuadro());
  }
  
  for (int i= 0; i<20; i++){
   triangulos.add(new Triangulo());
  }
  
  
 




  
  Red=new filtros(255,0,0);
  Blue=new filtros(0,0,255);
  Green=new filtros(0,255,0);
  Yellow=new filtros(255,255,0);
  Pink=new filtros(255,100,150);
  Gray=new filtros(100,100,100);
  Orange=new filtros(200,150,0);
  Cyan=new filtros(255,0,255);
  cuadrado = new filtros(0,50,255);
  triangulo = new filtros(180,0,0);
  circulo = new filtros(0,180,0);
  
   camara1 =new pantalla("camara");
  
  video.start();
  
}


void draw(){
 camara1();
  
}
  
  
  
  
  void  camara1(){
  fill(255);
    scale(2);


  image(video, 0, 0 );
  
  
    textSize(7);
  text("Presiona para filtro de color: ",10,50);
    text("Presiona para filtro de forma: ",210,50);
    text("presiona q para hacer Captura de pantalla",220,230);
    text("presiona esc para salir",10,230);

  text("r= rojo ",10,90);
  text("b= azul ",10,100);
  text("g= verde ",10,110);
  text("y= amarillo ",10,120);
  text("p= rosa ",10,130);
  text("f= gris ",10,140);
  text("o= naranja ",10,150);
  text("c= cian ",10,160);
  text("u=cuadrado ",270,90);
  text("t=triangulo ",270,100);
  text("e=elipse ",270,110);


switch(key){
 
      
       case 'u':
     cuadrado.display();
     break;
     case 't':
     triangulo.display();
     break;
     case 'e':
     circulo.display();
     break;
   
}
  
if (keyPressed){
    switch(key){
      case 'r':
      Red.display();
      
      break;
      case 'b':
      Blue.display();
      break;
      case 'g':
      Green.display();
      break;
      case 'y':
      Yellow.display();
      break;
      case 'p':
      Pink.display();
      break;
      case 'f':
      Gray.display();
      break;
      case 'o':
      Orange.display();
      break;
      case 'c':
      Cyan.display();
      break;
        case 'q':
      saveFrame();
      break;
     
      
      }
    }
    }

  


void captureEvent(Capture c) {
  c.read();
}

interface colores {
  void display();
}


class filtros implements colores{
  
  color r,g,b;
  
  filtros(color r_,color g_,color b_){
    
    r=r_;
    g=g_;
    b=b_;
  
  }
  
  void display(){
    switch(key){
      case 'r':
      Red();
      break;
      case 'b':
      Blue();
      break;
      case 'g':
      Green();
      break;
      case 'y':
      Yellow();
      break;
      case 'p':
      Pink();
      break;
      case 'f':
      Gray();
      break;
      case 'o':
      Orange();
      break;
      case 'c':
      Cyan();
      break;
      case 'u':
      cuadrado();
      break;
      case 't':
      triangulo();
      break;
       case 'e':
      circulo();
      break;
      
      
    }
  }
  
  void Red(){
  tint(r,g,b);
}



void Blue(){
  tint(r,g,b);
}

void Green(){
  tint(r,g,b);
}

void Yellow(){
  tint(r,g,b);
}


void Pink(){
  tint(r,g,b);
}

void Gray(){
  tint(r,g,b);
}

void Orange(){
  tint(r,g,b);
}

void Cyan(){
  tint(r,g,b);
}

void cuadrado(){
  for (Cuadro c:cuadros){
    c.display(); 
    c.mover();
    tint(r,g,b);
}
}

void triangulo(){
for (Triangulo t:triangulos){
    t.display(); 
    t.mover();
   tint(r,g,b);
  }
}


void circulo(){
for (Elipse e:elipses){
    e.display(); 
    e.mover();
    tint(r,g,b);
    
  }
}









}
