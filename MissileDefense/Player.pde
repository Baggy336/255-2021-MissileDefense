class Player extends GameObject{
  Player(){
    super( loadImage("ship.png") );
    
    // Set the sprite starting point to the center of the screen, and barely above the bottom.
    position.x = width / 2;
    position.y = height - 100;
    
  }
  
  void update(){
    
    float disToMouseX = mouseX - position.x;
    float disToMouseY = mouseY - position.y;
    
    // Returns angle of the line created by X and Y
    float radians = atan2(disToMouseY, disToMouseX);
    
    rotation = degrees(radians) + 90;
    
    
  }

}
