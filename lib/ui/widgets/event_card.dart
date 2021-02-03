part of 'widgets.dart';

class EventCard extends StatelessWidget {
  final EventModel eventModel;

  EventCard(this.eventModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 1, color: Colors.black26),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6),
                bottomLeft: Radius.circular(6),
              ),
              image: DecorationImage(
                image: NetworkImage(eventModel.picturePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - (120 + 95),
            margin: EdgeInsets.fromLTRB(10, 16, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  eventModel.title,
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  eventModel.description,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF04BC2C),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 3),
                  child: Text(
                    NumberFormat.currency(
                      symbol: 'Rp. ',
                      decimalDigits: 0,
                      locale: 'id-ID',
                    ).format(eventModel.cost),
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
