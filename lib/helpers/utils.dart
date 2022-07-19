import 'package:micard/model/category.dart';

class Utils{
  static List<Category> getMockedCategories(){
    return[
      Category(
        name: "Plumber",
        p: 2000,
        imgName: "plumber"
      ),
      Category(
          name: "Driver",
          p: 1000,
          imgName: "driver"
      ),
      Category(
          name: "Secretary",
          p: 20000,
          imgName: "secretary"
      ),
      Category(
          name: "Chef",
          p: 10000,
          imgName: "cook"
      ),
      Category(
          name: "Teacher",
          p: 50000,
          imgName: "teacher"
      ),
      Category(
          name: "Waiter",
          p: 6000,
          imgName: "waiter"
      ),
      Category(
          name: "Cashier",
          p: 20000,
          imgName: "cashier"
      ),
      Category(
          name: "Nursing Aid",
          p: 10000,
          imgName: "nurse"
      )
    ];
  }
}