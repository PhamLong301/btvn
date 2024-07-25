import 'dart:math';

void main(){
  inRaNgayThangNam(Thang.bon, ngay: 30);
  print('==================================');
  kiemTraChanLe(soKiemTra: 21);
}

//in ra ngày tháng năm
enum Thang{
  mot, hai, ba, bon, nam, sau, bay, tam, chin, muoi, muoi_mot, muoi_hai
}
bool _kiemTraNamNhuan(int namNhuan){
  if (namNhuan % 4 != 0) {
    return false;
  } else if (namNhuan % 100 != 0) {
    return true;
  } else if (namNhuan % 400 != 0) {
    return false;
  } else {
    return true;
  }
}
void inRaNgayThangNam(Thang thang,{required int ngay,int nam = 2024}){
  String inThang = '';
  if(thang == Thang.mot){
    inThang = "1";
  }else if(thang == Thang.hai){
    inThang = "2";
  }else if(thang == Thang.ba){
    inThang = "3";
  }else if(thang == Thang.bon){
    inThang = "4";
  }else if(thang == Thang.nam){
    inThang = "5";
  }else if(thang == Thang.sau){
    inThang = "6";
  }else if(thang == Thang.bay){
    inThang = "7";
  }else if(thang == Thang.tam){
    inThang = "8";
  }else if(thang == Thang.chin){
    inThang = "9";
  }else if(thang == Thang.muoi){
    inThang = "10";
  }else if(thang == Thang.muoi_mot){
    inThang = "11";
  }else if(thang == Thang.muoi_hai){
    inThang = "12";
  }
  bool kiemTraNamNhuan = _kiemTraNamNhuan(nam);
  print("Ngay $ngay thang $inThang nam $nam la ${(kiemTraNamNhuan? "nam nhuan" : "nam khong nhuan")}");
}

//Kiểm tra số chẵn lẻ
void kiemTraChanLe({required dynamic soKiemTra}) {
  bool kiemTraLaSo = (soKiemTra is num)? true : false;
  if(kiemTraLaSo == false){
    print("Bạn chuyển vào không phải một số");
  }else{
    if(soKiemTra % 2 == 0){
      print("Số $soKiemTra bạn chuyển vào là số chẵn");
    }else{
      print("Số $soKiemTra bạn chuyển vào là số lẻ");
    }
  }
}