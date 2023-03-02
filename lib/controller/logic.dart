class Finder {
  int searchInvalidNumber(controller) {
    var fin;
    var text = controller.text;
    var items = text.split(',');
    List<dynamic> table =
        items.map((number) => int.tryParse(number) ?? 0).toList();
    print(table);
    var temp1 = 0;
    var temp2 = 0;
    if (table.length >= 3) {
      for (int a in table) {
        if (a % 2 == 0) {
          temp1++;
        } else if (a % 2 != 0) {
          temp2++;
        }
      }
     
      if (temp1 > temp2) {
        for (int a in table) {
          if (a % 2 != 0) {
            fin = a;
            
           
          }
        }
      } else {
        for (int a in table) {
          if (a % 2 == 0) {
            fin = a;

            
          }
        }
      }
      return fin;
    } else {
      return 0;
    }
  }
}
