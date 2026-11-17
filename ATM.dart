import 'dart:io';

class ATM {
    String pin = "1234";
    String name = "radwa";

    ATM({
        required this.name,
        required this.pin,
    });
}

void main() {


      stdout.write("Enter your name: ");
      String? name = stdin.readLineSync();
      
      stdout.write("Enter your PIN: ");
      String? pin = stdin.readLineSync();
      
      ATM a1 = ATM(
        name: name!,
        pin: pin!,
        );


     if(a1.name == "" || a1.pin != "1234"){
        print("Please try again");
     }else{
        print("Login correct");
     }

     double balance = 4000;

     stdout.write("\nEnter your choice: ");
     String? choice = stdin.readLineSync();

     if (choice =="balance"){
        print("balance: $balance EGP" );


     }else if (choice == "deposit"){

          stdout.write("\nEnter amount: ");
          double number = double.parse(stdin.readLineSync()!);

        print(balance += number);


     }else if (choice == "withdraw"){

          stdout.write("\nEnter amount: ");
          double number = double.parse(stdin.readLineSync()!);
          
          if (number <= balance && number > 0) {
            balance -= number;
            print("Correct");
            print("New balance: $balance EGP");
            } else {
                print("Try again");
                }
     }else {
        print("Not Available");
     }}
