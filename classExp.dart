

import 'dart:io';

class Student{

  String std_name = "dhiraj" ;
  String stud_sirname = "thakare";

  showData(){
    print("Show Function Call ");
    return 1;
  }


}

class Student_details extends Student{

  var std_per;
  var stud_clg;


  printnewdata(){
    print("student details ");
    print("student college "+stud_clg+" student per"+std_per);

  }

  show__All_Details(){
    print(" Show details  ");
    print(" Student Name "+super.std_name);
    print(super.showData());

    return 1;
  }



}

class Marks{

 var secureMarks;
 var total;

  Marks(secureMarks , total){

    this.secureMarks=secureMarks;
    this.total = total;
    displayMarks();

  }

  void displayMarks() {
    print("Your mark is equal to => ${secureMarks/(total/100)}");
}

}



void main(){
    // print("Enter your name?");
    // String? name = stdin.readLineSync();
    print("Enter How many Marks you got ");
    // stdout.write("Enter How many Marks you got ");

    // int? secureMarks = int.parse(stdin.readLineSync()!);
    double? secureMarks = double.parse(stdin.readLineSync()!);

    
    print("Enter out of marks ");
    // int? total = int.parse(stdin.readLineSync()!);
      double? total = double.parse(stdin.readLineSync()!);




  print(" Main Function Call ");
  var stud = Student_details();
  stud.std_per="44";
  stud.stud_clg="vcms";
  stud.printnewdata();
  print(stud.std_name);
  // print(stud.showData());
  print(stud.show__All_Details());
  var marks = new Marks(secureMarks, total);
  // marks.displayMarks();


}