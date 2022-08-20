import 'package:dart_pratice/dynamic_function.dart';

//////////////////// Another Example of TypeDef function
typedef Great = String Function(String);
void main(List<String> args) {
  //////////////// optional parameter
  sort('ali', 12, 34);
  ///////// Anonymous Function
  /////// Function that have no name
  final firstNumb = (name) => 'Hi $name';
  print(firstNumb('waqas'));

  ////////////// call welcome method
  welcome(firstNumb, 'waqas khurshid');
  ////////////// call welcomes method with typedef function
  welcomes(firstNumb, 'Harm Fatima. Class one');
////////////// Anonymous function with closures
  const multipler = 10;
  const list = [1, 2, 3, 4];
  final result = list.map((x) {
    return x * multipler;
  });
  print(result);

}

//////// function for optional  parameter
void sort(String name, int rollNo, [int? age]) {}
/////////////// Function as a parameter pass in any function
void welcome(String Function(String) great, String name) {
  print(great(name));
  print('welcome to waqas toturial');
}

////////////////// Typedef function if buler plate code are samed
/// Function as a parameter pass in any function
/// with the help of typedef function
void welcomes(Great great, String name) {
  print(great(name));
}
