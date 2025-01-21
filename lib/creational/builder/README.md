# Builder Design Pattern

The Builder is a **creational design pattern** that allows you to construct complex objects step by step. This pattern is particularly useful when an object has a large number of attributes or requires complex construction logic. It enables the creation of different types and representations of an object using the same construction code.

## Key Features
- **Step-by-Step Construction**: Breaks down the construction process into distinct steps.
- **Separation of Representation**: Allows you to create various representations of the same object.
- **Reusability**: The same construction process can be reused for different configurations.

## Structure
The Builder pattern typically consists of the following components:

1. **Builder Interface**: Defines the steps required to build the object.
2. **Concrete Builder**: Implements the Builder interface and provides specific implementations for each step.
3. **Director**: Oversees the construction process by invoking the steps in a specific sequence.
4. **Product**: The complex object that is being constructed.

## Example
Here’s a basic example of the Builder pattern:

```dart
// Product Class
class Car {
  String? engine;
  int? seats;
  String? color;

  @override
  String toString() => 'Car(engine: $engine, seats: $seats, color: $color)';
}

// Builder Interface
abstract class CarBuilder {
  void setEngine(String engine);
  void setSeats(int seats);
  void setColor(String color);
  Car getResult();
}

// Concrete Builder
class SportsCarBuilder implements CarBuilder {
  Car _car = Car();

  @override
  void setEngine(String engine) => _car.engine = engine;

  @override
  void setSeats(int seats) => _car.seats = seats;

  @override
  void setColor(String color) => _car.color = color;

  @override
  Car getResult() => _car;
}

// Director
class Director {
  final CarBuilder builder;

  Director(this.builder);

  void constructSportsCar() {
    builder.setEngine('V8');
    builder.setSeats(2);
    builder.setColor('Red');
  }
}

void main() {
  final builder = SportsCarBuilder();
  final director = Director(builder);

  director.constructSportsCar();
  final car = builder.getResult();

  print(car); // Output: Car(engine: V8, seats: 2, color: Red)
}
```

## Advantages
- Enhances the readability and maintainability of the construction process.
- Encapsulates the creation logic, reducing the complexity in client code.
- Facilitates the construction of immutable objects.

## Use Cases
- When creating objects that require a complex construction process.
- When the creation process involves multiple configurations or representations.
- When you want to isolate the construction logic from the object representation.

## Related Patterns
- **Abstract Factory**: Focuses on creating families of related objects.
- **Prototype**: Copies existing instances to create new objects.
- **Factory Method**: Defines an interface for creating an object but lets subclasses alter the type of objects that will be created.

---