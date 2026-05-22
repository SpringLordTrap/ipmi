//Variables que voy a usar
PImage foto1,TLTlogo, play, foto2, foto3, foto4, pj1, pj2, pj3, pj4, pj5, foto5, foto6, foto7, foto8;
PFont textol;
//diferentes pantallas
int pantalla=0;
int timerpantalla1=0;
int timerpantalla2=0;
int timerpantalla3=0;
int timerpantalla4=0;
int timerpantalla5=0;
int timerpantalla6=0;
int timerpantalla7=0;
int timerpantalla8=0;
int timerpantalla9=0;
int timerpantalla10=0;
//fondo "foto1" con loop en Y
float y1=0;
float y2;
float velocidad=0.5;
//titulo TLT cayendo desde arriba
float tltY=-130;
float cfX=650;
float ipjX=-200;
//fotos saliendo por la izquierda
int estadofoto=0;
int timerfoto=0;
//variables para la aparicion del texto
int timertexto=0;
float opacidadtexto=0;


void setup(){
 size(640,480);
 //estas son las cargas de las imagenes de fondo y hace que la segunda foto de Fondo esté donde termine la primera
 foto1=loadImage("fondo.jpg");
 y2=height;
 TLTlogo=loadImage("TLTlogo.png");
 play=loadImage("play.png");
 foto2=loadImage("foto2.jpeg");
 foto3=loadImage("cuadro.png");
 foto4=loadImage("TLTicon.png");
 textol=loadFont("text.vlw");
 pj1=loadImage("zero_one.png");
 pj2=loadImage("rust.jpg");
 pj3=loadImage("armstrong.jpg");
 pj4=loadImage("tesla.jpg");
 pj5=loadImage("doc.jpg");
 foto5=loadImage("mashupsongs.png");
 foto6=loadImage("fnafsong.png");
 foto7=loadImage("bandatlt.jpg");
 foto8=loadImage("reset.png");
 
}

void draw(){
  if (pantalla == 0) {
//carga las dos imagenes, y aplico las propiedades para que se muevan y la función de que se repitan en loop
 image(foto1,0,y1,width,height);
 image(foto1,0,y2,width,height);
 y1-=velocidad;
 y2-=velocidad;
 if (y1<=-height){
   y1=height;}
 if (y2 <=-height){
   y2=height;}
   
//poder ver las coords. del mouse en la consola
 println("X: " + mouseX + ", Y: " + mouseY);
 
//titulo viniendo de arriba
 image(TLTlogo,80,tltY,500,125);
 if (tltY < 20){
   tltY+=1; 
 } else{
   tltY=20;
 }
 
 
//imagen del grupo
 image(foto2,200,175,280,160);
 
//botón de Play que al ser apretado te lleva a la pantalla 1
 image(play,280,350,100,100);
 
/*
//282 375 X
//355 448 Y
 if((mouseX > 282)&&(mouseX < 375))
{
 if((mouseY > 355)&&(mouseY < 448))
{
 if(mousePressed == true)
 {
  delay(500);
  pantalla = 1;
  //println("funciona");
  }
 }
}
*/

}
 else if (pantalla == 1) {
  pantalla1();
}
 else if (pantalla == 2){
   pantalla2();
 }
  else if (pantalla == 3){
   pantalla3();
 }
  else if (pantalla == 4){
  pantalla4();
 }
  else if (pantalla == 5){
  pantalla5();
 }
  else if (pantalla == 6){
  pantalla6();
 }
 else if (pantalla == 7){
  pantalla7();
 }
 else if (pantalla == 8){
  pantalla8();
 }
  else if (pantalla == 9){
  pantalla9();
 }
  else if (pantalla == 10){
  pantalla10();
 }
}


// PARA LOS PROFESORES: les voy a explicar que pasó aca. Basicamente, a la hora de crear el boton que pueden ver arriba que termine cancelando, a la hora de hacer el botón de RESET de la pantalla 10 en la misma ubicación exacta, el botón se bugeaba, y, además de eso, se hacia un bucle entre la pantalla del menu y la final, por lo que, termine inhabilitando todo ese codigo para crear este, el cual, lo que hace es corregir ese bug, y ade,ás, solucionar otro problema, que era resetear todos los valores globales de los timers y demás para que la secuencia no se bugeara


void mousePressed() {
  if (pantalla == 0) {
  if ((mouseX > 282 && mouseX < 375) && (mouseY > 355 && mouseY < 448)) {
   pantalla = 1; 
 }
}
  else if (pantalla == 10) {
  if ((mouseX > 282 && mouseX < 375) && (mouseY > 355 && mouseY < 448)) {    
   pantalla = 0; 
   tltY = -130;  
   y1 = 0;       
   y2 = height;  
  timerpantalla1 = 0;
  timerpantalla2 = 0;
  timerpantalla3 = 0;
  timerpantalla4 = 0;
  timerpantalla5 = 0;
  timerpantalla6 = 0;
  timerpantalla7 = 0;
  timerpantalla8 = 0;
  timerpantalla9 = 0;
  timerpantalla10 = 0;
      
  estadofoto = 0;
  timerfoto = 0;
  timertexto = 0;
  opacidadtexto = 0;
  cfX = 650;
  ipjX = -200;
    }
  }
}
