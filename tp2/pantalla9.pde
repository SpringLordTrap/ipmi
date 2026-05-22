 void pantalla9() {

   //background(255);
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
 
 //foto de la banda
 image(foto7,ipjX,height/4,306,237);
//timer para que se regrese luego de un rato y poder pasar a la siguiente pantalla
  if (estadofoto==0){
  if (ipjX < 25){
   ipjX+=7; 
 } else{
   ipjX=25;
   estadofoto=1;
 }
}
 else if (estadofoto==1){
   if(timerfoto < 1560){ //puse 1680 porque 26 segundos x 60 fotogramas = 1680 frames
   timerfoto++;
   } else {
     estadofoto=2;
   }
 }
 else if (estadofoto==2){
   if (ipjX > -350){
     ipjX -=4;
   }
 }
 
 //lo que busco ahora es un texto que aparezca en 4 segundos de fade in, se quede durante 6, y se vaya con un fade out de 4 segundos
if (timertexto < 240) {
  opacidadtexto += 1.0625; 
} 
else if (timertexto >= 240 && timertexto < 1440) {
  opacidadtexto = 255;
} 
else if (timertexto >= 1440 && timertexto < 1680) {
  opacidadtexto -= 1.0625;
} 
else {
  opacidadtexto = 0;
}
 fill(255, opacidadtexto); 
 textSize(15);
 textAlign(CENTER, CENTER);
 text("The Living Tombostone se ha consagrado como una de las bandas mas queridas, teniendo éxito no solo con canciones de videojuegos, sino también con temas propios como Discord o My Ordinary Life y muchas más canciones que siguen sacando a día de hoy, teniendo giras por todo el mundo, y personalmente, es una de mis bandas favoritas, terminando así el tp2", 350, height/7, 250, 350);
 timertexto++;
 
 //para no programar otro botón, voy a hacer que luego de que pasen todas las animaciones que calculandolo es en un lapso de 30 segundos, se cambie automaticamente a la siguiente pantalla con un timer
timerpantalla9++;
//lo que hago acá para luego, no tener que programar todo de nuevo, es resetear los valores globales para que se pueda repetir la animacion
if (timerpantalla9 >= 1800) {
  timertexto = 0;   
  timerfoto = 0;
  estadofoto = 0;
  ipjX = -250; 
  pantalla = 10;
}

 
}
