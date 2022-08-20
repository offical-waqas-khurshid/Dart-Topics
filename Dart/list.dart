void main(List<String> args) {
  ////////////// List sub method's
  //////// foreach() method (if you read all values of list)
  var list = [1, 3, 4, 5, 6, 7, 8];
  list.forEach((value) => value);
  print(list);

  ////////////////// map() method (if you addition any value of list or something)
  const multipler = 10;
  const list1 = [1, 2, 3, 4];
  final result = list1.map((x) {
    return x * multipler;
  });
  print(result);
  ////////// Another map() method example
  var list3 = [1, 2, 3, 4, 5, 6];
  var doubleResult = list3.map((value) => value * 3);
  print(doubleResult);

  ///////////////// Generic function
  var list4 = [1, 2, 4, 4, 5, 6];
  var double = transform<int, int>(list4, (x) => x * 2);
  print(double);

  //////////////// Where() method in list to filter values
  var listfilter = [1, 2, 3, 4, 5, 6];
  final even = listfilter.where((value) => value % 2 == 0);
  print('The even number is =  $even');

  /////////////////// firstWhere() method to find the first values that match certain condition
  var listFilter = [1, 3, 4, 6, 8, 9];
  final odd =
      listFilter.firstWhere((value) => value % 2 == 1, orElse: () => -1);
  print('The odd number is = $odd');

  //////////////////// reduce() method for combining/ sum of list
  var listSum = [1, 2, 3, 4, 5, 6, 7];
  final sum = listSum.reduce((value, element) => value + element);
  print('The sum of List is = $sum');
  // valus: 1,3,6,10,15,21,28
  // element: 2,3,4,5,6,7
}

///////////// Generic function passing function as argument
List<R> transform<T, R>(List<T> item, R Function(T) f) {
  var result = <R>[];
  for (var x in item) {
    result.add(f(x));
  }
  return result;
}
