int state;

void setup(){

  size(100,100);
  background(255);
  state = 0;
}

void draw(){
  
  if(state == 0){
  println("Are you a tyrannosaurus rex?");
  println("A. Yes.");
  println("B. No.");
  state = 1;
  }
}

void keyPressed(){

  if(key =='A'||key == 'a'){
    if(state == 1){
    println("  ");
    println("Are you sure about that?");
    println("A. Yes.");
    println("B. Okay maybe not.");
    state = 2;
    } else if (state == 2){
      println("  ");
      println("Would you like to think again and provide another answer?");
      println("A. I am a T-Rex.");
      println("B. I am a dolphin.");
      state = 3;
     } else if (state == 3){
       println("  ");
       println("Dolphins are cool... Well, which geologic period.. would you like to say you were born in?");
       println("A. Jurassic, of course.");
       println("B. ...I don't know... Cretaceous maybe?");
       state = 4;
      }  else if (state == 4){
         println("  ");
         println("Actually, Tyrannosaurus Rex did not live during the Jurassic period. It lived millions of years later, during the late Cretaceous period.");
         println("A. That may be. But I am, and will always be a T-rex in heart, nevertheless");
         println("B. Really? I did not know that.");
         state = 5;
        }  else if (state == 5){
           println("  ");
           println("Well, okay. Good bye and have a nice day, sir.");
           state = 6;
        
    }
  }

  if(key =='B' || key == 'b'){
    if(state == 1){
    println("  ");
    println("Are you sure? tyrannosaurus rex walks on two legs and has two arms. Do you walk on two legs and have two arms?");
    println("A. Yes I do.");
    println("B. No I don't");
    state = 2;
    } else if (state == 2){
      println("  ");
      println("I beleve you might be a dolphin, sir.");
      println("A. I should've taken T-rex when I had the chance.");
      println("B. I am a dolphin.");
      state = 3;
    }  else if (state == 3){
       println("  ");
       println("I think you look like a dolphin. Can we talk about T-rex now?");
       println("A. Okay.");
       println("B. No.");
       state = 4;
      }  else if (state == 4){
         println("  ");
         println("Really? you really like dolphins, don't you?");
         println("A. Yes.");
         println("B. I LOVE DOLPHoIIINNNNNSSSSZZ");
         state = 5;
        }  else if (state == 5){
           println("  ");
           println("...alright I really need to go now. Bye.");
           state = 6;
        }
  }
}