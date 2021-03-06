PImage img;
import ddf.minim.*;
Minim minim;
AudioPlayer player;

int state;

void setup(){

  size(300,300);
  background(255);
  img = loadImage("t-rex.jpg");
  minim = new Minim(this);
  player = minim.loadFile("daydream.mp3");
  player.loop();
  state = 0;
}

void draw(){
  image(img, 0, 0);
  
  if(state == 0){
  println("  ");
  println("  ");
  println("  ");
  println("Are you a tyrannosaurus rex?");
  println("A. Yes.");
  println("B. No.");
  state = 1;
  }
}

void keyPressed(){

  if(key =='A'||key == 'a'){
    if(state == 1){
    img = loadImage("t-rex1.jpg");
    println("  ");
    println("Are you sure about that?");
    println("A. Yes.");
    println("B. Okay maybe not.");
    state = 2;
    } else if (state == 2){
      img = loadImage("t-rex2.jpg");
      println("  ");
      println("Would you like to think again and provide another answer?");
      println("A. I am a T-Rex.");
      println("B. I am a dolphin.");
      state = 3;
     } else if (state == 3){
       img = loadImage("dolphin1.jpg");
       println("  ");
       println("Dolphins are cool...");
       println("Well, which geologic period would you like to say you were born in?");
       println("A. Jurassic, of course.");
       println("B. Dolphin period, era of the dolphins. ");
       state = 4;
      }  else if (state == 4){
         img = loadImage("t-rex3.jpg");
         println("  ");
         println("Fun fact: Tyrannosaurus Rex did not live during the Jurassic period.");
         println("It lived millions of years later, during the late Cretaceous period.");
         println("A. That may be. But I am, and will always be a T-rex in heart, nevertheless");
         println("B. I did not know that...");
         state = 5;
        }  else if (state == 5){
           img = loadImage("kbye.jpg");
           println("  ");
           println("Well, okay. Good bye and have a nice day, sir.");
           println("  ");
           println("  ");
           println("Press Q to play again.");
           state = 6;
        
    }
  }

  if(key =='B' || key == 'b'){
    if(state == 1){
    img = loadImage("t-rex4.jpg");
    println("  ");
    println("Are you sure? tyrannosaurus rex walks on two legs and has two arms.");
    println("Do you walk on two legs and have two arms?");
    println("A. Yes I do.");
    println("B. No I don't");
    state = 2;
    } else if (state == 2){
      img = loadImage("dolphin1.jpg");
      println("  ");
      println("I beleve you might be a dolphin, sir.");
      println("A. I should've taken T-rex when I had the chance.");
      println("B. Yes. I am a dolphin.");
      state = 3;
    }  else if (state == 3){
       img = loadImage("dolphin3.jpg");
       println("  ");
       println("I think you look like a dolphin. Can we talk about T-rex now?");
       println("A. Okay.");
       println("B. No.");
       state = 4;
      }  else if (state == 4){
         img = loadImage("dolphin2.jpg");
         println("  ");
         println("Really? you really like dolphins, don't you?");
         println("A. Yes.");
         println("B. I LOVE DOLPHoIIINNNNNSSSSZZ");
         state = 5;
        }  else if (state == 5){
           img = loadImage("kbye.jpg");
           println("  ");
           println("...alright I really need to go now. Bye.");
           println("  ");
           println("  ");
           println("Press Q to play again.");
           state = 6;
        }
  }
    if(key =='Q' || key == 'q'){
    if(state == 6){
    state=0;  
    }
    }
}
