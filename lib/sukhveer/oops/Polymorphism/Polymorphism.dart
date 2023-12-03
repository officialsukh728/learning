class Grandfather {
  void motorCycle() {
    print("motorCycle Grandfather");
  }

  void car() {
    print("car Grandfather");
  }
}

class Father extends Grandfather {
  @override
  void motorCycle() {
    print("motorCycle Father");
    super.motorCycle();
  }
}

class Me extends Father {
  @override
  void motorCycle() {
    print("motorCycle Me");
    super.motorCycle();
  }
}
class You extends Father {
  @override
  void motorCycle() {
    print("motorCycle Me");
    super.motorCycle();
  }
}

class Child extends Me {
  @override
  void motorCycle() {
    print("motorCycle Child");
    super.motorCycle();
    super.car();
    car();
  }

  @override
  void car() {}
}

void main() {
  Child child = Child();
  child.motorCycle();
}
