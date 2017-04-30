import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class clipboardShrinker extends PApplet {

String text = "321";
String copyOfText;
int shrinkDelay = 2000;

public void setup() {
}

public void draw() {
  delay(shrinkDelay);
  GClip.shrink();
  println("Shrunken text = " + GClip.paste());
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "clipboardShrinker" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
