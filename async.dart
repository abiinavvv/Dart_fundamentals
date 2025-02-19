Future<void> getResult() async {
  await Future.delayed(Duration(seconds: 5));
  print("you have passed");
}

Future<void> fetchResults() async {
  await getResult();
}

void main() async {
  print("data Loading");
  await fetchResults();
  print("loaded");
  print("Marks loading");
  await loadMarks();
  print("Marks loaded");

  try {
    var data = await getMarks();
    data;
  } catch (e) {
    print(e);
  }
}

Future<void> getMarks() async {
  await Future.delayed(Duration(seconds: 10));
  print("Marks are 70,80");
}

Future<void> loadMarks() async {
  await getMarks();
}
