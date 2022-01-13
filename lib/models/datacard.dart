import 'package:flutter/cupertino.dart';

class Cards{
  late List<Color> color;
  late String id;
  late String name;
  late String  points;



  Cards({
    required this.name,
    required this.id,
    required this.color,
    required this.points,

});

}


List<Cards> cardinfo = [
  Cards(name: "Aditya", id: "123 456 7890",color: const [Color(0xFFE96443),Color(0xFF904E95)],points: "10000000000000000000000"),

];