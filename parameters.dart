void main() {

  // positional parameters
  void getSum(int a, int b) {
    int sum = a + b;
    print(sum);
  }

  getSum(5, 8);

  // named parameters , they can be optional, and can have default values
  void getNames({String? name, int? age = 18}) {
    print("Helloo, $name");
    print("Age , $age");
  }

  getNames(name: "abhnav");

  //required named paramters
  void getOtherName({required String name}) {
    print("Hoi , $name");
  }

  getOtherName(name: "amal");

  // optional parameters
  void getOptional([String? name]) {
    print("Hellooooo , $name");
  }

  getOptional();
}
