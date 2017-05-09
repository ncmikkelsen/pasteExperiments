ArrayList<String> memory = new ArrayList<String>();
String lastCopy = "";

void setup(){
  
}


void draw(){
  String currentCopy = GClip.paste();
  if(!lastCopy.equals(currentCopy)){
    memory.add(currentCopy);
    String newCopy = memory.get(int(random(memory.size())));
    lastCopy = newCopy;
    GClip.copy(newCopy);
  }
}