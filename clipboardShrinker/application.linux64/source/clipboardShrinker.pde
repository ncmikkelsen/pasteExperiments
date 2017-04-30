String text = "321";
String copyOfText;
int shrinkDelay = 2000;

void setup() {
}

void draw() {
  delay(shrinkDelay);
  GClip.shrink();
  println("Shrunken text = " + GClip.paste());
}