
class GameObject {
 
 // Needs image to be rendered.
 PImage img;
 
 // Stores the position of the Sprite, measured in pixels.
 PVector position = new PVector();
 
 // Stores the angle to render the sprite, measured in degrees.
 float rotation = 0;
 
 GameObject(PImage img){
   this.img = img;
   
 }
 void update(){
   
 }
 void draw(){
  
   // All transformations are put into the pushMatrix 
   pushMatrix();
   translate(position.x, position.y);
   rotate(radians(rotation));
   image(img, -img.width / 2, -img.height / 2);
   popMatrix();
 }


}
