void main() {
  btvn_1();
  print("==============================================");
  Ban ban_1 = Ban("Viet Nam", "Gỗ", 100000, 001);
  ban_1.thongTinBan();
  print("==============================================");
  xuatChuoiInHoa("Đây Là Kiểm THử XuẤt ra ChUỖI in Hoa");
}

///btvn 1
void btvn_1() {
  // danh sách có phần tử trùng
  List<int> cccd_cmnd = [
    813209465712,
    482916370254,
    713592684021,
    813209465712,
    573012486921,
    927130584631,
    813209465712,
    482916370254,
    927130584631,
    713592684021,
    482916370254,
    573012486921
  ];
  // danh sách không có phần tử trùng
  List<int> cccd = [
    385027461932,
    509847213726,
    648931275049,
    721946038512,
    963827145701,
    137594286205,
    205876493182,
    479361508274,
    312705849637,
    586721940375,
    940528136274,
    627548301945
  ];
  if (kiemTraTrung(cccd_cmnd)) {
    print("Danh sách có phần tử trùng lặp.");
  } else {
    print("Danh sách không có phần tử trùng lặp.");
  }
}

bool kiemTraTrung(List<int> list) {
  bool foundDuplicate = false;
  list.forEach((e) {
    if (list.indexOf(e) != list.lastIndexOf(e)) {
      foundDuplicate = true;
    }
  });
  return foundDuplicate;
}

///btvn 2
class Ban {
  String noiSX;
  String?chatLieu;
  int giaTien;
  int id;

  Ban(this.noiSX, this.chatLieu, this.giaTien, this.id);

  @override
  String toString() {
    return 'Ban{noiSX: $noiSX, chatLieu: $chatLieu, giaTien: $giaTien, id: $id}';
  }

  void thongTinBan() {
    List<Ban> danhSachBan = [
      Ban("Viet Nam", "Go", 50000, 1),
      Ban("Viet Nam", "Go ep", 52000, 3),
      Ban("Trung Quoc", "Sat", 60000, 2),
      Ban("Nhat Ban", "Go", 100000, 5),
      Ban("Viet Nam", "Go ep", 80000, 1),
    ];
    
  }
}

bool kiemTraId(List<Ban> _ktId) {
  bool idTrung = false;
  _ktId.forEach((e) {
    if (_ktId.indexOf(e) != _ktId.lastIndexOf(e)) {
      idTrung = true;
    }
  });
  return idTrung;
}

///btvn 3
void xuatChuoiInHoa(String chuoiInHoa) {
  print(chuoiInHoa.toUpperCase());
  print(chuoiInHoa.toLowerCase());
}
