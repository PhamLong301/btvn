void main() {}

enum TypePeople { Kid, Adult, Old }

class People {
  String _id;
  String name;
  int age;
  TypePeople? typePeople;

  People(this._id, this.name, this.age, {required this.typePeople});

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  People getPeopleInfor() {
    if (this.age < 18) {
      this.typePeople = TypePeople.Kid;
    } else if (this.age >= 18 && this.age < 60) {
      this.typePeople = TypePeople.Adult;
    } else {
      this.typePeople = TypePeople.Old;
    }
    return this;
  }

  People getPeopleInfor_2() {
    People peopleInfor = People(_id, name, age, typePeople: typePeople);
    if (peopleInfor.age < 18) {
      peopleInfor.typePeople = TypePeople.Kid;
    } else if (18 <= peopleInfor.age && peopleInfor.age < 60) {
      peopleInfor.typePeople = TypePeople.Adult;
    } else {
      peopleInfor.typePeople = TypePeople.Old;
    }
    return peopleInfor;
  }

  People getPeopleInfor_3(People inforBefore) {
    People inforAfter = People(
        inforBefore._id, inforBefore.name, inforBefore.age,
        typePeople: inforBefore.typePeople);
    if (inforBefore.age < 18) {
      inforAfter.typePeople = TypePeople.Kid;
    }

    return inforAfter;
  }
}
