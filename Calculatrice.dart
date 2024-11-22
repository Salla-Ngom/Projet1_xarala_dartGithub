import 'dart:io';

class Operation {
  double Addition(double a, double b) {
    return a + b;
  }

  double Soustraction(double a, double b) {
    return a - b;
  }

  double Multiplication(double a, double b) {
    return a * b;
  }

  double Division(double a, double b) {
    return a / b;
  }

  void afficherMenu() {
    print('\nMenu');
    print('1. Addition');
    print('2. Soustraction');
    print('3. Multiplication');
    print('4. Division');
    print('0. Quitter');
    stdout.write('Choisissez une option (0-4): ');
  }
}

void main() {
  var operation = Operation();
  bool calculer = true;
  while (calculer) {
    operation.afficherMenu();
    String? choix = stdin.readLineSync();
    if (choix == null) continue;
    int option = int.tryParse(choix) ?? -1;
    switch (option) {
      case 0:
        print('Au revoir');
        exit(0);
      case 1:
        print('Donner le premier nombre');
        double? a = double.tryParse(stdin.readLineSync() ?? '');
        print('Donner le deuxieme nombre');
        double? b = double.tryParse(stdin.readLineSync() ?? '');
        if (a != null && b != null) {
          print('\n');
          print('\t\t$a + $b = ${operation.Addition(a, b)}');
        }
        break;
      case 2:
        print('Donner le premier nombre');
        double? a = double.tryParse(stdin.readLineSync() ?? '');
        print('Donner le deuxieme nombre');
        double? b = double.tryParse(stdin.readLineSync() ?? '');
        if (a != null && b != null) {
          print('\n');
          print('\t\t$a - $b = ${operation.Soustraction(a, b)}');
        }
        break;
      case 3:
        print('Donner le premier nombre');
        double? a = double.tryParse(stdin.readLineSync() ?? '');
        print('Donner le deuxieme nombre');
        double? b = double.tryParse(stdin.readLineSync() ?? '');
        if (a != null && b != null) {
          print('\n');
          print('\t\t$a * $b = ${operation.Multiplication(a, b)}');
        }
        break;
      case 4:
        print('Donner le premier nombre');
        double? a = double.tryParse(stdin.readLineSync() ?? '');
        print('Donner le deuxieme nombre');
        double? b = double.tryParse(stdin.readLineSync() ?? '');
        if (a != null && b != null && b != 0) {
          print('\n');
          print('\t\t$a / $b = ${operation.Division(a, b)}');
        } else {
          print('error division avec 0 impossible');
        }
        break;
    }
  }
}
