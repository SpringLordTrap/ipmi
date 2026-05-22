void pantalla10(){
  
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
  
  //boton de reset imagen
  image(foto7,181,46,289,262);
  //botón de Play que al ser apretado te lleva a la pantalla
  image(foto8,280,350,100,100);
  
}

//282 375 X
//355 448 Y
// if((mouseX > 282)&&(mouseX < 375))
// {
//  if((mouseY > 355)&&(mouseY < 448))
// {
//  if(mousePressed == true)
//  {
//   delay(500);
//   pantalla = 0;
   //println("funciona");
