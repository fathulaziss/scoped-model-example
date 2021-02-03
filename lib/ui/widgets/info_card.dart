part of 'widgets.dart';

class InfoCard extends StatelessWidget {
  final InfoModel infoModel;

  InfoCard(this.infoModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 198,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(infoModel.picturePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(spreadRadius: 1, blurRadius: 2, color: Colors.black26),
        ],
      ),
    );
  }
}
