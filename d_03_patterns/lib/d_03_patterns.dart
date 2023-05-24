// Paterns may matcha values, destructure a value or both
void patterns() {
  print('######PATTERNS######');
  var numbers = [1, 2, 3];
  var [a, b, _] = numbers;
  print(a);
  print(b);
  switch (numbers) {
    // does not match because numbers has three elements
    case [var x, var y]:
      print('$x $y');
    // does match because numbers have three elements and the last one is 3
    case [var x, var y, 3 || 5]:
      print('$x $y');
  }

  // PATTERNS IN:
  // variable declarations
  var (aa, [bb, cc]) = ('str', [1, 2]);
  print('$aa $bb $cc');
  // variable assignment
  (bb, cc) = (cc, bb);
  print('$bb $cc');
  // for - for -in loops
  Map<String, int> hist = {
    'a': 23,
    'b': 100,
  };
  for (var MapEntry(:key, value: count) in hist.entries) {
    print('$key: $count');
  }
}
