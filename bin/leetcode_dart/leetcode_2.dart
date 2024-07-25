void main() {
  // String str = " Hello World ";
  // print(exampleOne(str));
  print(exerciseTow(a: 3, b: 4, c: 5));

  List<int> ex = [4, 6, 8, 3, 2, 0, 1, 9];
  print(sortList(ex));
}

int exerciseOne(String str) {
  str = str.trim();
  List<String> chuoiKt = str.split(' ');
  String tuCuoi = chuoiKt.last;
  int doDaiTuCuoi = tuCuoi.length;
  return doDaiTuCuoi;
}

bool exerciseTow({required num a, required num b, required num c}) {
  if ((a + b > c) || (a + c > b) || (b + c > a)) {
    return true;
  } else {
    return false;
  }
}

List<int> sortList(List<int> input) {
  List<int> output = List.from(input);
  int n = output.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (output[j] > output[j + 1]) {
        int temp = output[j];
        output[j] = output[j + 1];
        output[j + 1] = temp;
      }
    }
  }
  return output;
}
