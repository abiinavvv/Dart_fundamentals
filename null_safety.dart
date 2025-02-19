void main() {
  String? name;
  print(name ??= "Guest");

  late String name2;
  name2 = "amal";
  print(name2);

  String? character;
  int? n = character?.length;
  print(n);
}
