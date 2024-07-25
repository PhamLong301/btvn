void main() {
  print("=================================");
  tinhLuyThua(so: 3, soMu: 3);
  print("=================================");
  kiemTraLaTamGiac(canh_a: 3, canh_b: 3, canh_c: 3);
  print("=================================");
  List<List<int>> maTran = [
    [1, 2, 3],
    [4, 6, 5],
    [11, 22, 33]
  ];
  tinhMaTran(maTran);
}

void tinhLuyThua({required int so, required int soMu}) {
  int ketQua = 1;
  for (int i = 0; i < soMu; i++) {
    ketQua = ketQua * so;
    print('$so ^ $soMu = $ketQua');
  }
}

void kiemTraLaTamGiac(
    {required num canh_a, required num canh_b, required num canh_c}) {
  if ((canh_a + canh_b > canh_c) ||
      (canh_a + canh_c > canh_b) ||
      (canh_b + canh_c > canh_a)) {
    print("Day la tam giac voi so do cac canh la: $canh_a, $canh_b, $canh_c");
  } else {
    print("Day khong phai la tam giac");
  }

  // if((canh_a == canh_b) || (canh_b == canh_c) || (canh_c == canh_a)){
  //   print("Day la tam giac deu");
  // }else if((canh_a == canh_b) && (canh_b == canh_c) && (canh_c == canh_a)){
  //   print("Day la tam gia deu");
  // }else if((canh_a * canh_a == canh_b * canh_b + canh_c * canh_c) ||
  //     (canh_b * canh_b == canh_a * canh_a + canh_c * canh_c) ||
  //     (canh_c * canh_c == canh_b * canh_b + canh_a * canh_a)){
  //   print("Day la tam gia vuong");
  // }
}

void tinhMaTran(List<List<int>> maTran) {
  for (int row = 0; row < maTran.length; row++) {
    for (int col = 0; col < maTran[row].length; col++) {
      List<int> soChan = [];
      if (maTran[row][col] % 2 == 0) {
        print(maTran[row][col]);
      }
    }
  }
}
