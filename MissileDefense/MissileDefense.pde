
Player thePlayer; 
GameObject background;

ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();

// Setup is called exactly once:
void setup(){
  size(700, 800); // Set size of window
  
  thePlayer = new Player(); //Instantiate the player.
  background = new GameObject(loadImage("space.png"));
  background.position.x = width / 2;
  background.position.y = height / 2;

  for(int i = 0; i < 10; i++){
    Asteroid a = new Asteroid();
    asteroids.add(a);
  }
}



// This function is called every 1/60th of a second.
// Used to create the game loop design pattern.
// Each time the function is called, think of it as a "tick".

void draw(){
  
  // === CALC TIME ===
  // Calculate time since last tick.
  
  // === PROCESS INPUT ===
  // Get all input from devices.
  
  // === UPDATE ===
  // Update all game objects.
  
  // Essentially the update design pattern.
  for(Asteroid a : asteroids) a.update();
  thePlayer.update();
  
  
  // === DRAW ===
  // Render all game objects.
  
  background(0);
  background.draw();
  for(Asteroid a : asteroids) a.draw();
  thePlayer.draw(); //Draws the player for every frame of the game.

}

PImage GetRandomAsteroidImage() {

    PImage img = null;
    
    int num = (int)random(0, 3);
    switch(num){
      case 0:
      img = loadImage("asteroid1.png");
      break;
      case 1:
      img = loadImage("asteroid2.png");
      break;
      case 2:
      default:
      img = loadImage("asteroid3.png");
      break;
    }
    return img;
}
