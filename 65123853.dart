class Person {
  String _name; 

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  Person(this._name);
}

class Engine {
  String _model; 
  int _speed; 

  void setModel(String model) {
    _model = model;
  }

  void setSpeed(int speed) {
    _speed = speed;
  }

  String getModel() {
    return _model;
  }

  int getSpeed() {
    return _speed;
  }

  Engine(this._model, this._speed);

  void displayEngineInfo() {
    print('Model: $_model');
    print('Speed: $_speed km/h');
  }
}

class Car {
  String _brand; 
  String _model; 
  Person _owner; 
  Engine _engine; 

  void setBrand(String brand) {
    _brand = brand;
  }

  void setModel(String model) {
    _model = model;
  }

  void setOwner(Person owner) {
    _owner = owner;
  }

  void setEngine(Engine engine) {
    _engine = engine;
  }

  String getBrand() {
    return _brand;
  }

  String getModel() {
    return _model;
  }

  Person getOwner() {
    return _owner;
  }

  Engine getEngine() {
    return _engine;
  }

  Car(this._brand, this._model, this._owner, this._engine);

  void displayCarInfo() {
    print(' รายละเอียดรถ ');
    print('Brand: $_brand');
    print('Model: $_model');
    print('Owner: ${_owner.getName()}');
    print('Engine');
    _engine.displayEngineInfo();
  }

  void run() {
    print('ความเร็ว ${_engine.getSpeed()} km/h');
  }
}

class Honda extends Car {
  String _color; 
  void setColor(String color) {
    _color = color;
  }
  String getColor() {
    return _color;
  }

 Honda(String brand, String model, Person owner, Engine engine, this._color) : super(brand, model, owner, engine);

  void run() {
    print('ความเร็วในการขับ 120 km/h');
  }
  
  void displayCarInfo() {
    super.displayCarInfo();
    print('Color: $_color');
  }
}

void main() {
  Person owner = Person('SOMBAT');
  Engine engine = Engine('V8', 200);
  Honda car = Honda('Honda', 'Civic', owner, engine, 'BLACK');
  car.displayCarInfo();
  car.run();
}
