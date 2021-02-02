import processing.serial.*;
import java.util.Random;
import java.util.*;
import java.util.Timer;
import java.io.*;
import java.time.LocalDate;

//Hit r to reset entire game to start new. E to exit

//Add in obstacle

//optional(Customazable map size)


snake player;
enemy apple;
input in;

void setup() {
  size(700,540); // 700, 500 // 
  player = new snake("C:\\Users\\qizon\\Desktop\\SnakeGame\\HiScoreRecord.txt"); // change filepath if on another pc
  apple = new enemy();
  in = new input();
  
}

void draw() {
  
  if(!in.done){ //while the naming isn't done
    background(0);
    fill(color(255,0,255)); textSize(35);
    text("No more than 6 character!",100,50);
    text("Enter your name: "+ in.name,100,100);
    text("Backspace to delete Enter to finish naming",100,200);
    
  }else{
    //Once you name yourself activate follwoin code
    background(0);
    fill(color(105,105,105));
    rect(0,0,700,40);
    fill(color(255,0,255)); textSize(35);
    textAlign(LEFT);
    //print out score hiscore + highest player name
    text("SCORE:" + (player.snakelength - 3) ,5,32);
        
    text("HIScore: "+ player.Hiscore,230,32);
    
    text("HIName:" + player.HiName,450,32);
    
    apple.generateapple(player.get_map()); // generate apple
    apple.display(); // display apple
  
    player.move(); // player move according to the last direction
    apple.reset(player.eat(apple.get_applexcoord(),apple.get_appleycoord())); // if player eats apple then the apple will be reset
    player.display(); //dispalyer player
    
    if(player.gameover){ //if gameover then activate following code
      textSize(100);  
      fill(color(255,255,0));textAlign(CENTER); 
      // display text
      text("GameOver",350,260);
      textSize(40);
      text("Press e to exit, press r to reset",350,360);
      if(keyPressed){
       if(key == 'e'){ // if press e then exit
         player.writeHiScore(player.FilePath, player.snakelength-3,in.name); // record the score name + date
          exit(); // program exit
       }
       if(key =='r'){ //if press r then reset and player plays again
         player.writeHiScore(player.FilePath, player.snakelength-3,in.name); 
         player.loadHiScore(player.FilePath);
         player.reset();
         apple.reset(true);
       }
      }
    }
    frameRate(15); // slow down the refereash rate
    
  }
  
}

void keyReleased(){
      if(!in.done){ // this is the input system for name
        if(in.name.length() != 6){
      if(key == 'A'){
        in.name = in.name+"A";  
      }
      if(key == 'B'){
        in.name = in.name+"B";  
      }
      if(key == 'C'){
        in.name = in.name+"C";  
      }
      if(key == 'D'){
        in.name = in.name+"D";  
      }
      if(key == 'E'){
        in.name = in.name+"E";  
      }
      if(key == 'F'){
        in.name = in.name+"F";  
      }
       if(key == 'G'){
        in.name = in.name+"G";  
      }
      if(key == 'H'){
        in.name = in.name+"H";  
      }
      if(key == 'I'){
        in.name = in.name+"I";  
      }
      if(key == 'J'){
        in.name = in.name+"J";  
      }
      if(key == 'K'){
        in.name = in.name+"K";  
      }
      if(key == 'L'){
        in.name = in.name+"L";  
      }
      if(key == 'M'){
        in.name = in.name+"M";  
      }
      if(key == 'N'){
        in.name = in.name+"N";  
      }
      if(key == 'O'){
        in.name = in.name+"O";  
      }
      if(key == 'P'){
        in.name = in.name+"P";  
      }
      if(key == 'Q'){
        in.name = in.name+"Q";  
      }
      if(key == 'R'){
        in.name = in.name+"R";  
      }
      if(key == 'S'){
        in.name = in.name+"S";  
      }
      if(key == 'T'){
        in.name = in.name+"T";  
      }
      if(key == 'U'){
        in.name = in.name+"U";  
      }
      if(key == 'V'){
        in.name = in.name+"V";  
      }
      if(key == 'W'){
        in.name = in.name+"W";  
      }
      if(key == 'X'){
        in.name = in.name+"X";  
      }
      if(key == 'Y'){
        in.name = in.name+"Y";  
      }
      if(key == 'Z'){
        in.name = in.name+"Z";  
      }
      if(key == 'a'){
         in.name = in.name+"a";
      }if(key == 'b'){
        in.name = in.name+"b"; 
      }
      if(key == 'c'){
        in.name = in.name+"c";
      }if(key == 'd'){
         in.name = in.name+"d";
      }
      if(key == 'e'){
        in.name = in.name+"e";
      }if(key == 'f'){
         in.name = in.name+"f";
      }
      if(key == 'g'){
        in.name = in.name+"g";
      }if(key == 'h'){
         in.name = in.name+"h";
      }
      if(key == 'i'){
        in.name = in.name+"i";
      }if(key == 'j'){
         in.name = in.name+"j";
      }
      if(key == 'k'){
        in.name = in.name+"k";
      }if(key == 'l'){
         in.name =in.name+"l";
      }
      if(key == 'm'){
        in.name = in.name+"m";
      }if(key == 'n'){
         in.name = in.name+"n";
      }
      if(key == 'o'){
        in.name = in.name+"o";
      }if(key == 'p'){
        in.name = in.name+"p";
      }
      if(key == 'q'){
        in.name = in.name+"q";
      }if(key == 'r'){
         in.name = in.name+"r";
      }
      if(key == 's'){
        in.name = in.name+"s";
      }if(key == 't'){
        in.name = in.name+"t";
      }
      if(key == 'u'){
        in.name = in.name+"u";
      }if(key == 'v'){
      in.name = in.name+"v";
      }
      if(key == 'w'){
        in.name = in.name+"w";
      }if(key == 'x'){
         in.name = in.name+"x";
      }
      if(key == 'y'){
        in.name = in.name+"y";
      }if(key == 'z'){
         in.name = in.name+"z";
      }
      }
        if(key ==  BACKSPACE ){ //delete one character
          String temp = "";
          for(int i = 0; i <in.name.length()-1;i++){
            temp = temp + in.name.charAt(i);
          }
          in.name = temp;
        }
        if(key == ENTER ){ //the naming is done
          in.done = true;
          }
        }
      }
class input{
    public String name = "";
    public boolean done = false;
    
}


class enemy{
  // randomly generate a coordnate and cannot be on snake.
  boolean notgenerated = true;
  
  public int applexcoord = 0; // I messed up the naming. X is suppose to represent row which will be y
  public int appleycoord = 0; // y is suppose to represent column which will be x.
  
  //eats apple and grow bigger.
  void generateapple(int[][] player){
    Random rand = new Random();
    
    while(notgenerated){
      for(int i = 1; i <26 && notgenerated; i++){ // generate a apple
      for(int j = 1; j<36 && notgenerated;j++ ){
         if(player[i][j] == 0 && rand.nextInt(1000) == 1){
           applexcoord = i;
           appleycoord = j;
           notgenerated =false;
          }
        }
      }
    }
  }
  
  int get_applexcoord(){
    return applexcoord;
  }
  
  int get_appleycoord(){
    return appleycoord;
  }
  
  void reset(boolean ate){
    if(ate){
      notgenerated = true;
      applexcoord = 0;
      appleycoord = 0;
    }
  }
  
  void display(){ //display apple
    int xcorcenter = 0;
    int ycorcenter = 40;
    for(int  i = 1; i <26; i++){
      if(i == 1){
        ycorcenter+= 10;
      }else{
        ycorcenter+= 20;
      }
       for(int j = 1; j <36;j++){
         if(j == 1){
          xcorcenter+= 10;
        }else{
          xcorcenter+= 20;
         }
         if(i == applexcoord && j == appleycoord){
           fill(color(255,0,0));
           circle(xcorcenter,ycorcenter,20);
         }
       }
       xcorcenter = 0;
    }
    ycorcenter = 0;
  }
}
class snake {
  
  public boolean right = false;
  public boolean left = false;
  public boolean down = false;
  public boolean up = false;
  
  public boolean gameover =false;
  
  public int[][] map = new int[27][37];
  public int snakelength =3;
  
  public String status = "none";
  
  public String FilePath = new String();
  
  public String Hiscore = new String();
  public String HiName = new String();
  public String date = new String();
  public String playername = new String();
  public String choice = "none";
  
  snake(String FilePath){
    loadHiScore(FilePath);
    
    for(int i = 0; i <27;i++){ // 26 to 1
      for(int j = 0; j <37;j++){
        if(i == 0 || i==26|| j==0|| j==36){
          map[i][j]= -1;
        }else{
          map[i][j] = 0;
        }
      }
    }
    map[12][1] = 3;
    map[12][2] = 2;
    map[12][3] = 1;
    
    this.FilePath = FilePath;
  }
  void reset(){
    right = false;
    left = false;
    down = false;
    up = false;
  
    gameover =false;
  
    snakelength =3;
  
    status = "none";
    for(int i = 0; i <27;i++){ // 26 to 1
      for(int j = 0; j <37;j++){
        if(i == 0 || i==26|| j==0|| j==36){
          map[i][j]= -1;
        }else{
          map[i][j] = 0;
        }
      }
    }
    map[12][1] = 3;
    map[12][2] = 2;
    map[12][3] = 1;
    loop();
  }
  void loadHiScore(String FilePath){ //load the leaderboard hiscore
    int hiscore =0;
        try {
            File file = new File(FilePath);
            Scanner fileIn = new Scanner(file);

            while (fileIn.hasNextLine()) {
                String line = fileIn.nextLine();
                
                Scanner lineScanner = new Scanner(line);
                
                lineScanner.useDelimiter("\\|");
                
                String name = lineScanner.next();
                
                String scoretemp = lineScanner.next();
                
                String datetemp = lineScanner.next();
                
                
               
                if(hiscore < Integer.parseInt(scoretemp)){
                    hiscore = Integer.parseInt(scoretemp);
                    HiName = name;
                    Hiscore = scoretemp;
                    date = datetemp;
                    //set all the hi score name, date, score into the player model
                }else if(hiscore == Integer.parseInt(scoretemp)) {
                  if(LocalDate.parse(date).isBefore(LocalDate.parse(datetemp))){
                    Hiscore = scoretemp;
                    date = datetemp;
                    HiName = name;
                    
                  }
                    
                }

            }
            
            fileIn.close();
        } catch (Exception e) {
            Hiscore = "0";
            e.printStackTrace();
        }
    
  }
  
  void writeHiScore(String FilePath,int score,String name){// Write to the configured filePath
    try {
            PrintWriter out = new PrintWriter(new FileWriter(FilePath, true));
            out.print(name+'|');
            
            out.print(Integer.toString(score) +'|');
            
            out.println(java.time.LocalDate.now() );
            out.close();

        } catch (IOException e) {

            e.printStackTrace();
        }
  }
  
  boolean eat(int applexcoord,int appleycoord){ //if snake eats apple return true
    
    for(int i = 1; i<26;i++){
      for(int j =1; j<36;j++){
        if(map[i][j] == 1 && applexcoord == i && appleycoord == j){
          snakelength +=1;
          return true;
        } 
      }
    }
    return false;
  }
  
  int[][] get_map(){
    return map;
  }
  
  void display() { //display the snake
    int xcorcenter = 0;
    int ycorcenter = 40;
    
    for(int  i = 1; i <26; i++){
      if(i == 1){
        ycorcenter+= 10;
      }else{
        ycorcenter+= 20;
      }
      
       for(int j = 1; j <36;j++){
         if(j == 1){
          xcorcenter+= 10;
        }else{
          xcorcenter+= 20;
         }
         
         if(map[i][j] > 0){
           fill(color(0,255,0));
           circle(xcorcenter,ycorcenter,20);
         }
       }
       xcorcenter = 0;
    }
    ycorcenter = 0;
  }
  
  void move(){ // move snake
    if(keyPressed){
      if(key == 'w' && status != "down" ){
        right = false;
        left = false;
        down = false;
        up = true;
        status ="up";
      }
      if(key == 'd'&& status !="left"){
        // right
        status ="right";
        right = true;
        left = false;
        down = false;
        up = false;
      }
      if(key == 's'&& status != "up"){
        status ="down";
        right = false;
        left = false;
        down = true;
        up = false;
      }
      if(key == 'a'&& status != "right" ){
        status ="left";
        right = false;
        left = true;
        down = false;
        up = false;
      } 
    }
    
    int headrow =0;
    int headcolumn =0;
    
    for(int i =0; i <27;i++){
      for(int j = 0; j <37; j++){
        if(map[i][j] == 1){
          headrow = i;
          headcolumn = j;
        }
      }
    }
    

      
      
            
    if(headrow == 0|| headrow == 26 || headcolumn == 0||headcolumn == 36){
        
        gameover =true;
        
      //Exit game. Snake enter death zone.
      
    }
    if(map[headrow][headcolumn+1] != 0 && status.equals("right")){
      gameover =true;
       
      // You ate yourself
    }
    if(map[headrow][headcolumn-1] != 0 && status.equals("left")){
      gameover =true;

 
      // You ate yourself
    }
    if(map[headrow-1][headcolumn] != 0 && status.equals("up")){
      gameover =true;

 
      // You ate yourself
    }
    if(map[headrow+1][headcolumn] != 0 && status.equals("down")){
      gameover =true;
      // You ate yourself
    }
    
    
    
    if(right && !gameover){ //ifgame is not over and snake have direction move snake accordingly
      
      for (int i = 1; i < 26; i++){
            for(int j = 1; j < 36;j++){
                if(map[i][j] == snakelength){
                    map[i][j] = 0;
                }
            }
        }

        for (int i = 1; i <26; i++) {
            for (int j = 1; j < 36; j++) {
                if (map[i][j] >= 1) {
                    map[i][j]++;
                }
            }
        }
        
        for (int i = 1; i <26; i++){
            for(int j = 1; j <36; j++){
                if(map[i][j] == 2){
                    map[i][j+1] = 1;
                }
            }
        }
    }
    if(left && !gameover){
      
      for (int i = 1; i < 26; i++){
            for(int j = 1; j < 36;j++){
                if(map[i][j] == snakelength){
                    map[i][j] = 0;
                }
            }
        }
        
        for (int i = 1; i <26; i++) {
            for (int j = 1; j < 36; j++) {
                if (map[i][j] >= 1) {
                    map[i][j]++;
                }
            }
        }

        for (int i = 1; i <26; i++){
            for(int j = 1; j <36; j++){
                if(map[i][j] == 2){
                    map[i][j-1] = 1;
                }
            }
        }
    }
    if(up && !gameover){

      for (int i = 1; i < 26; i++){
            for(int j = 1; j < 36;j++){
                if(map[i][j] == snakelength){
                    map[i][j] = 0;
                }
            }
        }
        for (int i = 1; i <26; i++) {
            for (int j = 1; j < 36; j++) {
                if (map[i][j] >= 1) {
                    map[i][j]++;
                }
            }
        }
        for (int i = 1; i <26; i++){
            for(int j = 1; j <36; j++){
                if(map[i][j] == 2){
                    map[i-1][j] = 1;
                }
            }
        }
    }
    if(down && !gameover){
      
      for (int i = 1; i < 26; i++){
            for(int j = 1; j < 36;j++){
                if(map[i][j] == snakelength){
                    map[i][j] = 0;
                }
            }
        }

        for (int i = 1; i <26; i++) {
            for (int j = 1; j < 36; j++) {
                if (map[i][j] >= 1) {
                    map[i][j]++;
                }
            }
        }
        
        for (int i = 1; i <26; i++){
            for(int j = 1; j <36; j++){
                if(map[i][j] == 2){
                    map[i+1][j] = 1;
                }
            }
        }
    }
  }
  
}
