// Builder Design Pattern Example in Dart

// Product Class
class Car {
  String? engine;
  int? seats;
  String? color;

  @override
  String toString() => 'Car(engine: \$engine, seats: \$seats, color: \$color)';
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
  final Car _car = Car();

  @override
  void setEngine(String engine) {
    _car.engine = engine;
  }

  @override
  void setSeats(int seats) {
    _car.seats = seats;
  }

  @override
  void setColor(String color) {
    _car.color = color;
  }

  @override
  Car getResult() => _car;
}

// Another Concrete Builder (Optional)
class SUVCarBuilder implements CarBuilder {
  final Car _car = Car();

  @override
  void setEngine(String engine) {
    _car.engine = engine;
  }

  @override
  void setSeats(int seats) {
    _car.seats = seats;
  }

  @override
  void setColor(String color) {
    _car.color = color;
  }

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

  void constructSUV() {
    builder.setEngine('V6');
    builder.setSeats(5);
    builder.setColor('Black');
  }
}

// Main Function
void main() {
  // Build a Sports Car
  final sportsCarBuilder = SportsCarBuilder();
  final director = Director(sportsCarBuilder);
  director.constructSportsCar();
  final sportsCar = sportsCarBuilder.getResult();
  print('Sports Car: $sportsCar'); // Output: Car(engine: V8, seats: 2, color: Red)

  // Build an SUV
  final suvBuilder = SUVCarBuilder();
  final suvDirector = Director(suvBuilder);
  suvDirector.constructSUV();
  final suvCar = suvBuilder.getResult();
  print('SUV: $suvCar'); // Output: Car(engine: V6, seats: 5, color: Black)
}
