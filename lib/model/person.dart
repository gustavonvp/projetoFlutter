class Person {
  Person({
    required this.height,
    required this.weight,
    required this.gender,
    required this.age,
  });

  double height;
  double weight;
  Gender gender;
  int age;
}

enum Gender { male, female }
