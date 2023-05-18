void variables() {
  print('#####VARIABLES#####');
  // Dart allows you to declare variables withouy specifying their types using var
  // the types are determined by their initial values
  var name = 'Scott';

  // but we can specify the variable type by replacing the var with the type itself
  int year = 2020;

  // the Object type means that the variable is not restricted to a single type
  Object age = 2;
  age = '2';
  // we can cast the type of an Object with the as keyword
  String ageStr = age as String;
  int ageInt;
  if (age is int) {
    ageInt = age as int;
  } else {
    ageInt = 0;
  }
  print('\nWoff..!! This is $name, I born at $year and I have $age years');
  print('ageStr: $ageStr');
  print('ageInt: $ageInt');

  // Uninitialized variables that have a nullable type are null, even numbers
  // everything in dart are objects
  int? lines;
  print('lines: $lines');

  // if null-safety is enabled we must initialize the values
  int line = 2;
  print('line: $line');

  // but we can initialize later
  bool isOld;
  if (year < 2000) {
    isOld = true;
  } else {
    isOld = false;
  }
  print('isOld: $isOld');

  // Late variables allows us to tell dart that a variable was initialized before it's used
  late bool started;
  if (1 > 0) {
    started = true;
  }
  print('Started: $started');
  // if we mark a variable as late and we initialize it, the value is calculates at its first usage
  int double(int a) {
    return a * 2;
  }

  late int four = double(2); // double is not called until the first four usage
  print('four: $four');

  // final variables can be set only once
  final cellBrand = 'xiaomi';
  print('cellBrand: $cellBrand');

  // const variables are variables that can't change and are set in compile-time
  const maxPosts = 30;
  print('maxPosts: $maxPosts');
  // const can be also used to create const values
  var days = const [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ]; // days will never change so it's okay to use const
  print('students: $days');
}

class Person {
  late String name;
  late String lastName;
}

void operators() {
  print('#####OPERATORS#####');
  // Most common operations are allowed, we will review the special operators
  // Ternary operator are allowed
  var limit = 10;
  var isHuge = limit >= 10 ? true : false;
  print('isHuge: $isHuge');

  String? name;
  // if name is null greeting takes the 'Hello' value
  String greeting = name ?? 'Hello';
  print('greeting: $greeting');

  // Cascade notation, it helps to assign values to classes
  var person = Person()
    ..name = 'John'
    ..lastName = 'Smith';
  print('person: $person');
}

// Imports:
// import 'dart:html';    // std library import
// import 'package:test/test.dart'; // 3rd party libs import
