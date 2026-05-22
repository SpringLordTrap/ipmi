//pantalla1
 void pantalla1() {
 
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
 
//cuadro donde irá el texto viniendo desde la derecha
 image(foto3,cfX,height/7,250,350);
//quiero que el cuadro, en su primera aparición se desplace desde la derecha
 if (cfX > 350){
   cfX-=8; 
 } else{
   cfX=350;
 }

//icono de la banda viniendo desde la izquierda, para que luego de 7 segundos se vaya por donde vino
 image(foto4,ipjX,height/4,200,200);
//timer para que se regrese luego de un rato y poder pasar a la siguiente pantalla
  if (estadofoto==0){
  if (ipjX < 70){
   ipjX+=7; 
 } else{
   ipjX=70;
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
   if (ipjX > -250){
     ipjX -=4;
   }
 }
 
//para no programar otro botón, voy a hacer que luego de que pasen todas las animaciones que calculandolo es en un lapso de 30 segundos, se cambie automaticamente a la siguiente pantalla con un timer
timerpantalla1++;
//lo que hago acá para luego, no tener que programar todo de nuevo, es resetear los valores globales para que se pueda repetir la animacion
if (timerpantalla1 >= 1680) {
  timertexto = 0;   
  timerfoto = 0;
  estadofoto = 0;
  ipjX = -250; 
  pantalla = 2;
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
 text("The Living Tombstone es un pilar fundamental de la cultura de internet, especialmente por su impacto en el fandom de Five Nights at Freddy's. Aunque el grupo colabora con muchos artistas, el núcleo creativo lo forman dos personas principales. Los otros miembros que solemos ver en videos o arte conceptual son representaciones visuales o músicos de apoyo para shows en vivo. El proyecto fue fundado por Yoav Landau en marzo de 2011. comenzó como un canal de remixes (específicamente de My Little Pony), evolucionó rápidamente hacia composiciones originales y canciones basadas en videojuegos.", 350, height/7, 250, 350);
 timertexto++;

}
