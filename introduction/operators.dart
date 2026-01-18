void main() {
  // arithmetic operators:
  int a = 10;
  int b = 5;
  // add:
  int sum = a + b;
  print("Sum: $sum");
  // subtract:
  int difference = a - b;
  print("Difference: $difference");
  // multiply:
  int product = a * b;
  print("Product: $product");
  // divide:
  double quotient = a / b; // result is a double
  int quotientInt = a ~/ b; // integer division
  print("Quotient: $quotient");
  print("Integer Quotient: $quotientInt");
  // modulus:
  int remainder = a % b;
  print("Remainder: $remainder");
  // prefix:
  int c = 3;
  print("Prefix increment: ${++c}"); // c is now 4
  print("Prefix decrement: ${--c}"); // c is now 3
  // postfix:
  print("Postfix increment: ${c++}"); // prints 3, then c is 4
  print("c right now: ${c}");
  print("Postfix decrement: ${c--}"); // prints 4, then c is 3
  print("c right now: ${c}");

  // equality and relational operators:
  int age = 18;
  if (age == 18) {
    // equal equal
    print("Age is exactly 18");
  }
  if (age != 20) {
    print("Age is not 20");
  }
  if (age > 16) {
    print("Age is greater than 16");
  }
  if (age < 21) {
    print("Age is less than 21");
  }
  if (age >= 18) {
    print("Age is at least 18");
  }
  if (age <= 18) {
    print("Age is at most 18");
  }

  // Type test operators:
  String name = "Dart";
  if (name is int) {
    // type check using "is"
    print("name is a int");
  }
  if (name is! int) {
    // type check using "is!"
    print("name is not a int");
  }
  dynamic numberDynamic = 45;
  int number = numberDynamic as int;
  print(number);

  // Assignment operators:
  // equal:
  int x = 10;
  int? y;
  y ??= x; // if y is null, assign x to y
  print(y);
  // Compound assignment operators: combine an operation with an assignment.
  x += 5; // x = x + 5
  print(x);
  x -= 3; // x = x - 3
  print(x);

  // logical operators:
  // inversion operator:
  bool isTrue = true;
  print("Inversion: ${!isTrue}");
  // AND operator:
  bool aBool = true;
  bool bBool = false;
  print("AND: ${aBool && bBool}"); // both conditions must be true
  // OR operator:
  print("OR: ${bBool || aBool}"); // at least one condition must be true

  // Conditional expressions:
  String newPlayer1 = playerName(null);
  print("Player 1: $newPlayer1");
  String newPlayer2 = playerName("Alice");
  print("Player 2: $newPlayer2");

  // Cascade notation: .. (double dot) notation for casecades isn't an operator. it's just part of dart syntax.
  // var buffer = StringBuffer();
  var buffer = StringBuffer()
    ..write("Hello, ")
    ..write("world!")
    ..write(" Welcome to Dart.");

  // raplce of:
  // buffer.write("Hello, ");
  // buffer.write("world!");
  // buffer.write(" Welcome to Dart.");
  print(buffer.toString());

  // Spread operators:
  List<int> list1 = [1, 2, 3];
  List<int> list2 = [0, ...list1, 4, 5]; // spread operator '...'
  print("List2: $list2");
  List<int> list3 = [10, 11];
  list3..addAll(list2)..add(12); // another use of cascade notation
  print("List3: $list3");
}

String playerName(String? name) => name ?? 'Guest';
// String playerName(String? name) => name != null ? name : 'Guest';



/**
 * Function application operator: () represents function application.
 * Subscription operator: [] represents a call to the overridable [] operator; example: fooList[1] passes the int 1 to fooList to access the element at index 1.
 * Conditional subscript access operator: ?[] Like [] , but the leftmost operand can be null; example: fooList?[1] passes the int 1 to fooList to access the element at index 1 unless fooList is null (in which case the expression evaluates to null).
 * Member access operator: . Refers to a property of an expression; example: foo.bar selects property bar from expression foo.
 * Conditional member access operator: ?. Like . , but the leftmost operand can be null; example: foo?.bar selects property bar from expression foo unless foo is null (in which case the expression evaluates to null).
 * Not-null assertion operator: ! Casts an expression to its underlying non-nullable type, throwing a runtime exception if the cast fails; example: foo!.bar asserts foo is non-null and selects the property bar , unless foo is null (in which case a runtime exception is thrown). 
 */