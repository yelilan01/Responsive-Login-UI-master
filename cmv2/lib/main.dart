import 'package:flutter/material.dart';

//1. Import the necessary statement
import 'package:cmv2/dbhelper.dart';
import 'package:cmv2/car.dart';


//2. main function - runApp() method used to run MyApp class
void main() {
  runApp(MyApp());
}

//3. create MyApp class extended StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter - SQLite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DatabaseCar(),
    );
  }
}

//4. Create DatabaseCar class extends StatefulWidget
class DatabaseCar extends StatefulWidget {
  @override
  _DatabaseCarState createState() => _DatabaseCarState();
}

//5. State of the StatefulWidget class
class _DatabaseCarState extends State<DatabaseCar> {
  final dbHelper = DatabaseHelper.instance;

  // 5.1 List of cars and carsByName
  List<Car> cars = [];
  List<Car> carsByName = [];

  // 5.2 Controllers used in insert operation UI
  TextEditingController nameController = TextEditingController();
  TextEditingController numController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  // 5.3 Controllers used in update operation UI
  TextEditingController idUpdateController = TextEditingController();
  TextEditingController nameUpdateController = TextEditingController();
  TextEditingController numUpdateController = TextEditingController();
  TextEditingController dateUpdateController = TextEditingController();

  // 5.4 Controllers used in delete operation UI
  TextEditingController idDeleteController = TextEditingController();

  // 5.5 Controllers used in query operation UI
  TextEditingController queryController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Insert",
              ),
              Tab(
                text: 'View',
              ),
              Tab(
                text: "Query",
              ),
              Tab(
                text: "Update",
              ),
              Tab(
                text: "Delete",
              ),
            ],
          ),
          title: const Text('CleanMaid'),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      controller: numController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Telephone Number'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      controller: dateController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Date',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: const Text('Continue'),
                    onPressed: () {
                      String name = nameController.text;
                      int num = int.parse(numController.text);
                      String date = dateController.text;
                      _insert(name, num, date);
                    },
                  ),
                  Container(
                    width: 1500,
                    height: 400,
                    decoration: new BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/maid.jpg'), fit: BoxFit.contain),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: cars.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  if (index == cars.length) {
                    return ElevatedButton(
                      child: Text('Refresh'),
                      onPressed: () {
                        setState(() {
                          _queryAll();
                        });
                      },
                    );
                  }
                  return Container(
                    height: 40,
                    child: Center(
                      child: Text(
                        '[${cars[index].id}] ${cars[index].name} - ${cars[index].num} - ${carsByName[index].date} ',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: queryController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                      ),
                      onChanged: (text) {
                        if (text.length >= 2) {
                          setState(() {
                            _query(text);
                          });
                        } else {
                          setState(() {
                            carsByName.clear();
                          });
                        }
                      },
                    ),
                    height: 100,
                  ),
                  Container(
                    height: 300,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: carsByName.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          margin: EdgeInsets.all(2),
                          child: Center(
                            child: Text(
                                '[${carsByName[index].id}] ${carsByName[index].name} - ${carsByName[index].num} - ${carsByName[index].date} ',
                                style: TextStyle(fontSize: 18)),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: idUpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'id',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: nameUpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: numUpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Telephone Number',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: dateUpdateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Date',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: Text('Update Information Details'),
                    onPressed: () {
                      int id = int.parse(idUpdateController.text);
                      String name = nameUpdateController.text;
                      int num = int.parse(numUpdateController.text);
                      String date = dateUpdateController.text;
                      _update(id, name, num, date);
                    },
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: idDeleteController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'id',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: Text('Delete'),
                    onPressed: () {
                      int id = int.parse(idDeleteController.text);
                      _delete(id);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Insert method
  void _insert(name, num,  date) async {
    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnNum: num,
      DatabaseHelper.columnDate: date
    };

    Car car = Car.fromMap(row);
    final id = await dbHelper.insert(car);
    _showMessageInScaffold("insert row id: $id");
  }

  // List all data in database
  void _queryAll() async {
    final allRows = await dbHelper.queryAllRows();
    cars.clear();
    allRows.forEach((row) => cars.add(Car.fromMap(row)));
    _showMessageInScaffold('Query done.');
    setState(() {});
  }

  // Select car name
  void _query(name) async {
    final allRows = await dbHelper.queryRows(name);
    carsByName.clear();
    allRows.forEach((row) => carsByName.add(Car.fromMap(row)));
  }

  // Update existing car
  void _update(id, name, num, date) async {
    // row to update
    Car car = Car(id, name, num, date);
    final rowsAffected = await dbHelper.update(car);
    _showMessageInScaffold('updated $rowsAffected row(s)');
  }

  // Delete
  void _delete(id) async {
    // Assuming that the number of rows is the id for the last row.
    final rowsDeleted = await dbHelper.delete(id);
    _showMessageInScaffold('deleted $rowsDeleted row(s): row $id');
  }
}