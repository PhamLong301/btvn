

void main(){
  hinhTron(5);
  print("-----------------");
  hinhTron(-5);
}
 
void hinhTron(double r){
  const double pi = 3.141516;
  if (r < 0){
    print("No Circle");
  }else{
    print('Chu vi: ${(2 * r * pi).toStringAsFixed(3)}');
    print('Dien tich: ${(r * r * pi).toStringAsFixed(3)}');
  }
} 