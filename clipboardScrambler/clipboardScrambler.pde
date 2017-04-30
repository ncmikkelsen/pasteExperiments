int scrambleInterval = 2000;

void setup(){};

void draw(){
  delay(scrambleInterval);
  
  GClip.scramble();
  println("Scrambled text: " + GClip.paste());
}