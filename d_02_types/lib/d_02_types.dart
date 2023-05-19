void builtIn() {
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
