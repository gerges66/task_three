import 'dart:io';
/*
void main() {
  takeCapital();
}

Map<String, String> takeCapital() {
  Map<String, String> capitals = {};
  print('Enter the country key & value');

  String country = stdin.readLineSync()!;
 String capital = stdin.readLineSync()!;

    capitals[country] = capital;


  print(capitals);

  return capitals;
}
String? getCapital(String country) {
  Map<String ,String> check={};
  if(check.containsKey(country)){
    check[country]=country;
  }
}*/
import 'dart:io';

void main() {

  Map<String, String> capitals = {};

  while (true) {

    print("\nChoose an option:");
    print("1. Add/Update a country-capital pair");
    print("2. Retrieve the capital of a country");
    print("3. View all country-capital entries");
    print("4. Exit");

    print("Enter your choice: ");
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1': // Add or Update a country-capital
        addOrUpdateCountry(capitals);
        break;

      case '2':
        print("Enter the country  ");
        String country = stdin.readLineSync()!;

        if (country != null) {
          String ?capital = getCapital(country, capitals);
          if (capital != null) {
            print("The capital of $country is $capital");
          } else {
            print("$country is not found ");
          }
        } else {
          print("error. Please try again");
        }
        break;

      case '3':
        displayEntries(capitals);
        break;

      case '4':
        print("Exit");
        return;

      default:
        print("Error Please try again");
    }
  }
}

//  add or update a country
void addOrUpdateCountry(Map<String, String> capitals) {
  print("Enter the country: ");
  String country = stdin.readLineSync()!;

  print("Enter the capital: ");
  String capital = stdin.readLineSync()!;


  if (capitals.containsKey(country)) {
    print("$country is already found");
  } else {
    print("Adding $country.");

}


  capitals[country] = capital;
  print(" updated success.");

}

// retrieve the capital of a country
String? getCapital(String country, Map<String, String> capitals) {
  return capitals[country];
}

//  display all country and capital
void displayEntries(Map<String, String> capitals) {
  if (capitals.isEmpty) {
    print("The Map is empty.");
  } else {
    capitals.forEach((country, capital) {
      print("$country: $capital");
    });
  }
}


