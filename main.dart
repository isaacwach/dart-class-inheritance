import 'dart:io';

// Defining an interface
abstract class Animal {
  void makeSound();
}

// Implementing the interface with a class
class Dog implements Animal {
  @override
  void makeSound() {
    print("Woof!, Woof!");
  }
}

// Create a class that inherits from the animal class
class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!, Meow!");
  }
}

//create a class the initialises data from a file
class Zoo {
  List<String> animals = [];

  Zoo(String fileName) {
    var file = File(fileName);
    file.readAsLinesSync().forEach((line) {
      animals.add(line);
    });
  }

  void displayAnimals(){
    animals.forEach((animal) => print(animal));
  }
}

void main() {
  // Demonstrate class instantiation with data from a file
  var zoo = Zoo('animals.txt');
  zoo.displayAnimals();
}
