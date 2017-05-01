String lastWord = GClip.paste();
int lastTime = millis();
int wordLength = lastWord.length();

void setup(){

}

void draw(){
  String currentWord = GClip.paste();
   if(!currentWord.equals(lastWord)){
     lastTime = millis();
     wordLength = currentWord.length();
   }
   String newWord = currentWord.substring(0, wordLength);
   int timeDif = (millis() - lastTime) / 1000;
   newWord += " (" + timeDif + ")";
   
   lastWord = newWord;
   GClip.copy(newWord);
   println(GClip.paste());
   delay(1000);
}