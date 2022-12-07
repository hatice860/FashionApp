import 'package:flutter/material.dart';

import 'detay.dart';

void main() => runApp(const ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.more,
                color: Colors.grey,
                size: 23,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.grey,
                size: 23,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: Colors.black87,
                size: 23,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 23,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Fashion App',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt,
            ),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: <Widget>[
          //üst taraftaki profil listesi
          Container(
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                listeElamani('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElamani('assets/images/model2.jpeg',
                    'assets/images/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElamani(
                    'assets/images/model3.jpeg', 'assets/images/chloelogo.png'),
                const SizedBox(
                  width: 30,
                ),
                listeElamani('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElamani('assets/images/model2.jpeg',
                    'assets/images/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                listeElamani(
                    'assets/images/model3.jpeg', 'assets/images/chloelogo.png'),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          //Card
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 4,
              child: Container(
                height: 550,
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/model1.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Daisy',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '34 mins ago',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 22,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'This official website features a ribbed knit zibber jacket that is'
                      'modern and stylish. It looks very temparement and is recomend to friends',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Detay(
                                    imgPath: 'assets/images/modelgrid1.jpeg')));
                          },
                          child: Hero(
                            tag: 'assets/images/modelgrid1.jpeg',
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/modelgrid1.jpeg',
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath:
                                            'assets/images/modelgrid2.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/images/modelgrid2.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/modelgrid2.jpeg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                        imgPath:
                                            'assets/images/modelgrid3.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/images/modelgrid3.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/images/modelgrid3.jpeg',
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.3)),
                          child: Center(
                            child: Text(
                              '# Louis vuitton',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.3)),
                          child: Center(
                            child: Text(
                              '# Chloe',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Icon(Icons.reply,
                            color: Colors.brown.withOpacity(0.2), size: 30),
                        SizedBox(width: 10),
                        Text(
                          '1.7k',
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        SizedBox(width: 25),
                        Icon(Icons.comment,
                            color: Colors.brown.withOpacity(0.2), size: 28),
                        SizedBox(width: 10),
                        Text(
                          '375',
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 16),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 235,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(Icons.favorite, color: Colors.red, size: 28),
                              SizedBox(width: 5),
                              Text(
                                '2.3k',
                                style: TextStyle(
                                    fontFamily: 'Montserrat', fontSize: 16),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

listeElamani(String imagePath, String logoPath) {
  return Column(
    children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.contain)),
            ),
          )
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        height: 20,
        width: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.brown),
        child: const Center(
          child: Text(
            'Follow',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 14, color: Colors.white),
          ),
        ),
      )
    ],
  );
}
