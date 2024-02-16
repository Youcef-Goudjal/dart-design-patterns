# Singleton Pattern

**Singleton** is a creational design pattern that lets you ensure that a class has only one instance, while providing a global access point to this instance.

![Alt text](https://refactoring.guru/images/patterns/content/singleton/singleton-2x.png)

## PseudoCode

## How To Implement

1. Add a private static field to the class for storing the singleton instance.

2. Declare a public static creation method for getting the singleton instance.

3. Implement “lazy initialization” inside the static method. It should create a new object on its first call and put it into the static field. The method should always return that instance on all subsequent calls.

4. Make the constructor of the class private. The static method of the class will still be able to call the constructor, but not the other objects.

5. Go over the client code and replace all direct calls to the singleton’s constructor with calls to its static creation method.

## Relationship with Other Patterns

- A **Facade** class can often be transformed into a **Singleton** since a single facade object is sufficient in most cases.
- **Abstract Factories**, **Builders** and **Prototypes** can all be implemented as **Singletons**.

## Pros and Cons

- Pros

  - ✅ You can be sure that a class has only a single instance.

  - ✅ You gain a global access point to that instance.

  - ✅ The singleton object is initialized only when it’s requested for the first time.

- cons

  - ❌ Violates the Single Responsibility Principle. The pattern solves two problems at the time.
  - ❌ The Singleton pattern can mask bad design, for instance, when the components of the program know too much about each other.
  - ❌ The pattern requires special treatment in a multithreaded environment so that multiple threads won’t create a singleton object several times.

## Read more

- [Refactoring Guru: Singleton](https://refactoring.guru/design-patterns/singleton)
- [Wikipedia: Singleton pattern](https://en.wikipedia.org/wiki/Singleton_pattern)
