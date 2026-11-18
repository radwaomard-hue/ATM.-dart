import 'dart:io';

class ATM {
    final String _pin = "1234";
    final String _name = "radwa";
    double _balance = 5000;
    
    
    bool authenticate() {
      stdout.write("Enter your name: ");
      String? name = stdin.readLineSync();

      stdout.write("Enter your PIN: ");
      String? pin = stdin.readLineSync();

      if (name == _name && pin == _pin) {
        print("Login correct\n");
        return true;
      } else {
          print("Invalid name or PIN. Please try again.");
          return false;
        }
    }

    
void Balance() {
  print("Current balance: $_balance EGP\n");
}


void deposit() {
  stdout.write("Enter amount to deposit: ");
  String? input = stdin.readLineSync();
  double? amount = double.tryParse(input ?? '');

  if (amount != null && amount > 0) {
    _balance += amount;
    print("Deposit successful! New balance: $_balance EGP\n");
  } else {
    print("Invalid amount. Please enter a positive number.\n");
}
}


void withdraw() {
  stdout.write("Enter amount to withdraw: ");
  String? input = stdin.readLineSync();
  double? amount = double.tryParse(input ?? '');

  if (amount != null && amount > 0) {
    if (amount <= _balance) {
      _balance -= amount;
      print("Withdrawal successful! New balance: $_balance EGP\n");
    } else {
      print("Insufficient balance. Try again.\n");
  }
} else {
  print("Invalid amount. Try again.\n");
}
}
}

void main() {
  ATM atm = ATM();
  
  if (!atm.authenticate()) {
    return;
}

bool exit = false;
while (!exit) {
  
  print("Choose an option: [balance, deposit, withdraw, exit]");
  stdout.write("Enter your choice: ");
  String? choice = stdin.readLineSync()?.toLowerCase().trim();
  
  switch (choice) {
    case "balance":
    atm.Balance();
    break;
    case "deposit":
    atm.deposit();
    break;
    case "withdraw":
    atm.withdraw();
    break;
    case "exit":
    print("Thank you for using the ATM. Goodbye!");
    exit = true;
    break;
    default:
    print("Not Available / Invalid Choice. Try again.\n");
}
}
}
