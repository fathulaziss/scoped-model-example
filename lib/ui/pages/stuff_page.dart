part of 'pages.dart';

class StuffPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: ListView(
        children: [
          Column(
            children: [
              Material(
                elevation: 2,
                color: Colors.white,
                child: Container(
                  height: 44,
                  width: double.infinity,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.off(HomePage());
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 16, right: 100),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        "All Left Stuffs",
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.1,
                child: ListView(
                  children: [
                    Column(
                      children: mockStuff
                          .map((e) => Padding(
                                padding: EdgeInsets.only(
                                    top: (e == mockStuff.first) ? 15 : 15,
                                    bottom: (e == mockStuff.last) ? 25 : 0),
                                child: StuffCard(e),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
