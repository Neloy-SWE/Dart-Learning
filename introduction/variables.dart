/**
 * Every app requires the top-level main() function, where execution starts. Functions that don't explicitly return a value have the void return type. To display text on the console, you can use the top-level print() function.
 * 
 */

void main() {
  print("Hello dart!");

  // we can define variable useing var, object, dynamic, or specific data types like int, String, double, bool etc.:
  // var name = 'Bob';
  // Object name = 'Bob';
  // dynamic name = 'Bob';
  String name = 'Bob';
  print(name);

  // null safety:
  String? address;
  print(address); // null
  /**
     * The Dart language enforces sound null safety.
     * null support methods like toString() or hasCode.
     * With null safety, the Dart compiler detects these potential errors at compile time.
     *
     * using ? after data type makes the variable nullable. (line 17).
     * 
     * variables require initialization before use. nullable variable's default value is null. so it does not require initialization before use.
     *
     * Null safety prevents an error that results from unintentional access of variables set to null. The error is called a null dereference error. A null dereference error occurs when you access a property or call a method on an expression that evaluates to null. An exception to this rule is when null supports the property or method, like toString() or hashCode.
     * 
     * Sound null safety changes potential runtime errors into edit-time analysis errors.
     */

  // lazy initialization:
  // late variable:
  late String city;
  //   print(city); //  Error: Late variable 'city' without initializer is definitely unassigned.
  city = "New York";
  print(city);

  /**
      * This lazy initialization is handy in a couple of cases:
         - The variable might not be needed, and initializing it is costly.
         - You're initializing an instance variable, and its initializer needs access to this.
      */

  // int sum = add(10, 20);
  late int sum = add(10, 20); // sum = <not initialized>
  // for lazy initialization, is we don't use sum variable, add() function will not be called.
  print("waiting");
  print("Sum: $sum");

   // final and const variables:
   final String country; // we can declare final variable without initialization.
   country = "USA"; // we can initialize final variable letter before use, but only once.
   print(country);
   // country = "Canada"; // The final variable 'country' can only be set once.

   // Use const for variables that you want to be compile-time constants.
   // const int year; // The constant 'year' must be initialized.
   const int year = 2026;
   print(year);
   // year = 2030; // Constant variables can't be assigned a value after initialization.

}

int add(int a, int b) {
  return a + b;
}
