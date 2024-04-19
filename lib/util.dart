import 'dart:typed_data';
import 'dart:ui';

List<Map> ImgList = [
  {
    "Independence": "images/Independence/1.jpg",
    "Republic": "images/Republic/1.jpg",
    "Happy New Year": "images/hny/1.jpg",
    "Happy Diwali": "images/Happy Diwali/1.jpg",
    "Happy Navratri": "images/Happy Navratri/1.jpg",
    "Happy Holi": "images/Happy Holi/1.jpg",
    "Happy Uttrayana": "images/Happy Uttrayana/1.jpg",
    "Happy Janmastami": "images/Happy Janmastami/1.jpg",
    "Happy Rakshabandhan": "images/Happy Rakshabandhan/1.jpg",
  },
  {
    "Independence": "images/Independence/2.jpg",
    "Republic": "images/Republic/2.jpg",
    "Happy New Year": "images/hny/2.jpg",
    "Happy Diwali": "images/Happy Diwali/2.jpg",
    "Happy Navratri": "images/Happy Navratri/2.jpg",
    "Happy Holi": "images/Happy Holi/2.jpg",
    "Happy Uttrayana": "images/Happy Uttrayana/2.jpg",
    "Happy Janmastami": "images/Happy Janmastami/2.jpg",
    "Happy Rakshabandhan": "images/Happy Rakshabandhan/2.jpg",
  },
  {
    "Independence": "images/Independence/3.jpg",
    "Republic": "images/Republic/3.jpg",
    "Happy New Year": "images/hny/3.jpg",
    "Happy Diwali": "images/Happy Diwali/3.jpg",
    "Happy Navratri": "images/Happy Navratri/3.jpg",
    "Happy Holi": "images/Happy Holi/3.jpg",
    "Happy Uttrayana": "images/Happy Uttrayana/3.jpg",
    "Happy Janmastami": "images/Happy Janmastami/3.jpg",
    "Happy Rakshabandhan": "images/Happy Rakshabandhan/3.jpg",
  },
  {
    "Independence": "images/Independence/4.jpg",
    "Republic": "images/Republic/4.jpg",
    "Happy New Year": "images/hny/4.jpg",
    "Happy Diwali": "images/Happy Diwali/4.jpg",
    "Happy Navratri": "images/Happy Navratri/4.jpg",
    "Happy Holi": "images/Happy Holi/4.jpg",
    "Happy Uttrayana": "images/Happy Uttrayana/4.jpg",
    "Happy Janmastami": "images/Happy Janmastami/4.jpg",
    "Happy Rakshabandhan": "images/Happy Rakshabandhan/4.jpg",
  },
  {
    "Independence": "images/Independence/5.jpg",
    "Republic": "images/Republic/5.jpg",
    "Happy New Year": "images/hny/5.jpg",
    "Happy Diwali": "images/Happy Diwali/5.jpg",
    "Happy Navratri": "images/Happy Navratri/5.jpg",
    "Happy Holi": "images/Happy Holi/5.jpg",
    "Happy Uttrayana": "images/Happy Uttrayana/5.jpg",
    "Happy Janmastami": "images/Happy Janmastami/5.jpg",
    "Happy Rakshabandhan": "images/Happy Rakshabandhan/5.jpg",
  },
  {
    "Independence": "images/Independence/6.jpg",
    "Republic": "images/Republic/6.jpg",
    "Happy New Year": "images/hny/6.jpg",
    "Happy Diwali": "images/Happy Diwali/6.jpg",
    "Happy Navratri": "images/Happy Navratri/6.jpg",
    "Happy Holi": "images/Happy Holi/6.jpg",
    "Happy Uttrayana": "images/Happy Uttrayana/6.jpg",
    "Happy Janmastami": "images/Happy Janmastami/6.jpg",
    "Happy Rakshabandhan": "images/Happy Rakshabandhan/6.jpg",
  },
  {
    "Independence": "images/Independence/7.jpg",
    "Republic": "images/Republic/7.jpg",
    "Happy New Year": "images/hny/7.jpg",
    "Happy Diwali": "images/Happy Diwali/7.jpg",
    "Happy Navratri": "images/Happy Navratri/7.jpg",
    "Happy Holi": "images/Happy Holi/7.jpg",
    "Happy Uttrayana": "images/Happy Uttrayana/7.jpg",
    "Happy Janmastami": "images/Happy Janmastami/7.jpg",
    "Happy Rakshabandhan": "images/Happy Rakshabandhan/7.jpg",
  },
  {
    "Independence": "images/Independence/8.jpg",
    "Republic": "images/Republic/8.jpg",
    "Happy New Year": "images/hny/8.jpg",
    "Happy Diwali": "images/Happy Diwali/8.jpg",
    "Happy Navratri": "images/Happy Navratri/8.jpg",
    "Happy Holi": "images/Happy Holi/8.jpg",
    "Happy Uttrayana": "images/Happy Uttrayana/8.jpg",
    "Happy Janmastami": "images/Happy Janmastami/8.jpg",
    "Happy Rakshabandhan": "images/Happy Rakshabandhan/8.jpg",
  },
  {
    "Independence": "images/Independence/9.jpg",
    "Republic": "images/Republic/9.jpg",
    "Happy New Year": "images/hny/9.jpg",
    "Happy Diwali": "images/Happy Diwali/9.jpg",
    "Happy Navratri": "images/Happy Navratri/9.jpg",
    "Happy Holi": "images/Happy Holi/9.jpg",
    "Happy Uttrayana": "images/Happy Uttrayana/9.jpg",
    "Happy Janmastami": "images/Happy Janmastami/9.jpg",
    "Happy Rakshabandhan": "images/Happy Rakshabandhan/9.jpg",
  },
  {
    "Independence": "images/Independence/10.jpg",
    "Republic": "images/Republic/10.jpg",
    "Happy New Year": "images/hny/10.jpg",
    "Happy Diwali": "images/Happy Diwali/10.jpg",
    "Happy Navratri": "images/Happy Navratri/10.jpg",
    "Happy Holi": "images/Happy Holi/10.jpg",
    "Happy Uttrayana": "images/Happy Uttrayana/10.jpg",
    "Happy Janmastami": "images/Happy Janmastami/10.jpg",
    "Happy Rakshabandhan": "images/Happy Rakshabandhan/10.jpg",
  },
];

Uint8List? savedImg;

List homeScr = [
  "Independence",
  "Republic",
  "Happy New Year",
  "Happy Diwali",
  "Happy Navratri",
  "Happy Holi",
  "Happy Uttrayana",
  "Happy Janmastami",
  "Happy Rakshabandhan",
];

List fram = [
  {"f1": "images/Frame/5.png"},
  {"f1": "images/Frame/6.png"},
  {"f1": "images/Frame/7.png"},
  {"f1": "images/Frame/8.png"},
];

List fontcolour = [
  0xffFF0000,
  0xff00FFFF,
  0xffC0C0C0,
  0xff0000FF,
  0xff808080,
  0xff00008B,
  0xff000000,
  0xffADD8E6,
  0xffFFA500,
  0xff800080,
  0xffA52A2A,
  0xffFFFF00,
  0xff800000,
  0xff00FF00,
  0xff008000,
  0xffFF00FF,
  0xff808000,
  0xffFFC0CB,
  0xff7FFFD4,
];
//
// List fontstyle=[
//   "f1",
//   "f2",
// ];

class ename{
  String? etext;
}

ename etname=ename();