void main() async {
  // VAR AND DYNAMIC

  var abc = 10;
  dynamic xyz = 12;
  abc = 20;
  xyz = "hello";
  xyz = [1, 3, 4];
  print(abc);
  print(xyz);

  // FINAL AND CONST

  final String example = "Hello How are you?";
  const String exp = "fine !";
  print(example);
  print(exp);

  // NULL SAFETY

  int? nums;
  int? number = nums;
  print(nums);
  print(nums ?? 10);
  print(nums ??= 20);

  print(number);
}
