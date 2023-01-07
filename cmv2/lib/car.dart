import 'package:cmv2/dbhelper.dart';

// 1. Create class Car
class Car {
  int id=0;
  String name='';
  int num=0;
  String date='';

  // 1.1. Class constructor
  Car(this.id, this.name, this.num, this.date);

  // 1.2. fromMap method - data manipulation method
  Car.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    num = map['num'];
    date = map['date'];
  }

  // 1.3. toMap method - convert car object into Map object
  Map<String, dynamic> toMap() {
    return {
      // 1.4 Object from Class DatabaseHelper - (dbhelper.dart)
      // table attributes from table cars_table
      DatabaseHelper.columnId: id,
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnNum: num,
      DatabaseHelper.columnDate: date,
    };
  }
}
