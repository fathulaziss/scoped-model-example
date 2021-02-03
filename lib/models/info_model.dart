part of 'models.dart';

class InfoModel extends Model {
  final int id;
  final String picturePath;

  InfoModel({this.id, this.picturePath});
}

List<InfoModel> mockInfo = [
  InfoModel(
      id: 1,
      picturePath:
          "https://www.theigc.org/wp-content/uploads/2020/08/thisisengineering-raeng-gaYC1U0L5pY-unsplash-1024x536-e1596572986360.jpg"),
  InfoModel(
      id: 2,
      picturePath:
          "https://www.theigc.org/wp-content/uploads/2020/08/thisisengineering-raeng-gaYC1U0L5pY-unsplash-1024x536-e1596572986360.jpg"),
  InfoModel(
      id: 3,
      picturePath:
          "https://www.theigc.org/wp-content/uploads/2020/08/thisisengineering-raeng-gaYC1U0L5pY-unsplash-1024x536-e1596572986360.jpg"),
];
