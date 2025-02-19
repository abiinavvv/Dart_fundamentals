mixin barking {
  void bark(String message) {
    print(message);
  }
}

class animal with barking {
  void dog() {
    bark("Dog is barking");
  }
}

void main() {
  animal al = animal();
  al.dog();
}
