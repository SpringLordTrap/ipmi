 void pantalla6(){
  
// background(255);
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
 
//cuadro se queda donde estaba antes
 image(foto3,350,height/7,250,350);
 
//imagen del quinto personaje
 image(pj5,ipjX,height/5.5,234,308);
//timer para que se regrese luego de un rato
  if (estadofoto==0){
  if (ipjX < 50){
   ipjX+=7; 
 } else{
   ipjX=50;
   estadofoto=1;
 }
}
 else if (estadofoto==1){
   if(timerfoto < 489){ //puse 480 porque 8 segundos x 60 fotogramas = 480 frames
   timerfoto++;
   } else {
     estadofoto=2;
   }
 }
 else if (estadofoto==2){
   if (ipjX > -250){
     ipjX -=4;
   }
 }
 
 //texto, sin embargo, lo que busqué aqui, era que el mismo dure 10 segundos en total, con 2 segundos de fade in y fade out
if (timertexto < 120) {
  opacidadtexto += 2.125; 
} 
else if (timertexto >= 120 && timertexto < 480) {
  opacidadtexto = 255;
} 
else if (timertexto >= 480 && timertexto < 600) {
  opacidadtexto -= 2.125;
} 
else {
  opacidadtexto = 0;
}
 fill(255, opacidadtexto); 
 textSize(15);
 textAlign(CENTER, CENTER);
 text("Doc es el mayor y último de los cinco personajes principales de la versión ficticia de la banda The Living Tombstone. Es el baterista de la banda. La personalidad de Doc es más relajada y reservada, aunque nunca se ha manifestado abiertamente.", 350, height/7, 250, 350);
 timertexto++;
 
//para no programar otro botón, voy a hacer que luego de que pasen todas las animaciones que calculandolo es en un lapso de 30 segundos, se cambie automaticamente a la siguiente pantalla con un timer
timerpantalla6++;
//lo que hago acá para luego, no tener que programar todo de nuevo, es resetear los valores globales para que se pueda repetir la animacion
if (timerpantalla6 >= 660) {
  timertexto = 0;   
  timerfoto = 0;
  estadofoto = 0;
  ipjX = -250; 
  pantalla = 7;
}

 
}
