void functions() {
  // regular function
  int double(int a) {
    return a * 2;
  }

  print(double(2));

  // named parameters
  int sum({int a = 0, int b = 0, int c = 0}) {
    return a + b;
  }

  print(sum(a: 2, b: 3));

  // optional parameters
  int triple([int? a]) {
    if (a == null) return 0;
    return a * 3;
  }

  print(triple());

  // arrow functions
  var upper = (String msg) => '${msg.toUpperCase()}';
  print(upper('hey'));
}

void loops() {
  var numbers = [1, 2, 3, 4];
  // classic
  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }
  // for in
  for (var n in numbers) {
    print(n);
  }
  // while and do-while works similar to js
}

void branches() {
  // if and switch work similar to js, in adition we have
  // if case
  var numbers = [1, 2];
  if (numbers case [var a, var b]) {
    print('$a, $b');
  }
  // switch expresion
  var hour = 20;
  var greeting = switch (hour) {
    >= 0 && <= 12 => 'good morning',
    > 12 && <= 24 => 'good evening',
    _ => 'hello',
  };
  print(greeting);
}
