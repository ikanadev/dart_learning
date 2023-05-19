void builtIn() {
  print('#####BUILT-IN#######');
  // we have
  // Numbers: int, double
  // Strings: String
  // Booleans: bool
  // Records: (val1, val2)
  // Lists: List
  // Sets: Set
  // Maps: Map
  // Runes: Runes (characters API is prefered)
  // Symbols: Symbol
  // Null

  // Also we have
  // Object: the superclass of all Classes except Null
  // Enum: the superclass of all enums
  // Future and Stream: used in async support
  // Iterable: used in for-in loop and generator functions
  // Never: Indicates that an expresion can never successfully finish (i.e. functions that always throw an exception)
  // dynamic: indicates you want to disable static checking (Object and Object? are prefered)
  // void: indicates a value is never used
  int one = 1;
  String from = 'mom';
  String message = 'you have $one message from ${from.toUpperCase()}';
  print(message);
  var multi = '''
  you can
create
  multiline
  strings
  ''';
  print(multi);

  var s = r'In a raw string, not even \n gets special treatment.';
  print(s);
}

void records() {
  print('#####RECORDS#######');
  // Records allow to bundle multiple objects into a single one, they're fixed and immutable.
  (String, int) person = ('Dan', 23);
  print(person);
  // named fields go inside curly brackets {}
  ({String name, int age}) pet = (name: 'Rambo', age: 2);
  print(pet);
  // named fields expose getters and positional field are accessible via $<position> syntax
  print(person.$1);
  print(pet.age);
  // we can destructure a record like this
  var (name, age) = person;
  print(name);
  print(age);
}

void collections() {
  print('#####COLLECTIONS#######');
  // List, Set and Map

  // Lists
  // Lists are just arrays
  List<String> list = [];
  list.add('hey');
  print(list[0]);

  // Sets
  // a collection of unique objects, they can not be accessed by index
  Set<int> numbers = {2, 3, 4};
  numbers.add(5);
  print(numbers.first);

  // Maps
  // a collection of key: value elements
  Map<String, double> prices = {
    'orange': 3.5,
    'apple': 2.5,
    'berry': 3.5,
  };
  prices['banana'] = 2.0;
  print(prices['banana']);

  // Operations
  // Loop: List and Set can be iterated using for  loops
  for (var price in numbers) {
    print(price);
  }
  // Spread and if-flow
  var add = true;
  Set<int> numbersV2 = {1, ...numbers, 2, if (add) 8};
  print(numbersV2);
  Set<String> strNumbers = {for (var n in numbersV2) '$n'};
  print(strNumbers);
}
