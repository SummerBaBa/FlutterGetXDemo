import 'package:get/get.dart';

class MyController extends GetxController {
  final user = User(name: 'John', last: 'Doe', age: 33).obs;
  void convertToUpperCase() {
    user.update((val) {
      user.value.name = user.value.name.toString().toUpperCase();
    });
  }
}

class User {
  String name, last;
  int age;
  User({required this.name, required this.last, required this.age});
  @override
  String toString() => '$name $last, $age years old';
}
