Stream<int> getData() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 3));
    yield i;
  }
}

void main() {
  getData().listen((value) {
    print("Recieved : $value");
  });
}
