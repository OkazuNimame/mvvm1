class Logic {
 List<bool> check = [];
 List<String> checkString = [];
 

 Logic(int count){
  check = List.filled(count, false);
  checkString = List.filled(count, "false");
 }
 void selectValue(int i){
  for(int id = 0; id < check.length; id ++){
    check[id] = false;
    checkString[id] = "false";
  }
  check[i] = true;
  checkString[i] = "true";
 }
}