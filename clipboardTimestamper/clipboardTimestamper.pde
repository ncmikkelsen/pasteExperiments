String previousText;

void setup() {

  previousText = GClip.timestamp(getTime());
}

void draw() {
  println(GClip.paste());
  if (!previousText.equals(GClip.paste())) {
    previousText = GClip.timestamp(getTime());
    println(GClip.paste());
  }
  delay(100);
}

String getTime() {
  String time = "";

  time += hour();
  time += ":";
  time += minute();
  time += ":";
  time += second();
  //time += ":";
  //time += millis();
  
  time += " ";
  
  time += day();
  time += "_";
  time += month();
  time += "_";
  time += year();
  return time;
}