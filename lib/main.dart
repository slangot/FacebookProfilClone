import 'package:flutter/material.dart';

const v_blue = Color(0xFF0062FF);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Avril Lavigne Profil',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeadProfil(),
            ProfilName(),
            Subscribe(),
            MainButton(),
            Divider(thickness: 8,),
            SecondaryMenu(),
            DetailsProfil(),
            ImgCardFirstRow(),
            Publications(),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 20,
        ),
        onPressed: () {},
      ),
      title: Text(
        'Avril Lavigne',
        style: TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
            SizedBox(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
    );
  }
}

class HeadProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      //height: size.height,
      width: size.width,
      child: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              child: Image.asset(
                  'assets/images/banner_1.jpg',
                width: size.width,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
           const Padding(
             padding: const EdgeInsets.only(top: 200),
             child: CircleAvatar(
                 backgroundColor: Colors.white,
                 radius: 95,
                 child: CircleAvatar(
                   backgroundImage: AssetImage('assets/images/profil_1.jpg'),
                   backgroundColor: Colors.white,
                   radius: 90,
                 ),
               ),
           ),
          ],
        ),
      ),
    );
  }
}

class ProfilName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Avril Lavigne',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.check_circle,
            color: v_blue,
            size: 18,
          ),
        ],
      ),
    );
  }
}

class Subscribe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text(
                '51 M',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 5),
              Text(
                'abonnées',
              ),
            ],
          ),
          Text(
            '-',
          ),
          Row(
            children: [
              Text(
                '313',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 5),
              Text(
                'abonnements',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MainButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 10),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: v_blue,
            ),
            width: 230,
            child: TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.live_tv_outlined,
                color: Colors.white,
              ),
              label: Text(
                'Regarder',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[300],
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_control,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondaryMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0, bottom: 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue[50],
                ),
                child: Text(
                  'Publications',
                  style: TextStyle(
                    color: v_blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'À propos',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                label: Text(
                  'Photos',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                ),
              ),
            ],
          ),
          Divider(thickness: 1,),
        ],
      ),
    );
  }
}

class DetailsProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Détails',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Icon(
                Icons.info,
                color: Colors.grey[600],
              ),
              SizedBox(width: 10),
              Text(
                  'Page',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 5,),
              Text('-'),
              SizedBox(width: 5,),
              Text(
                'Personnalité publique',
                style: TextStyle(
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Icon(
                Icons.link,
                color: Colors.grey[800],
              ),
              SizedBox(width: 10),
              Text('avrillavigne.link.to/biteme!fb'),
            ],
          ),
          SizedBox(height: 10,),
          Divider(thickness: 1,),
        ],
      ),
    );
  }
}

class ImgCard extends StatelessWidget {

  final Map photoCards;
  ImgCard(this.photoCards);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(3),
      child: Column(
        children: [

          Row(
            children: [
              Column(
                children: [
                  Card(
                    elevation: 7,
                    child: Image.asset(
                      photoCards['link'],
                      width: 80,
                      height: 80,
                    ),
                  ),
                  Text(
                    photoCards['description'],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ImgCardFirstRow extends StatelessWidget {
  final List imgDetails = [
    {
      'link': 'assets/images/img1.jpg',
      'description': 'The best damn thing',
    },
    {
      'link': 'assets/images/img2.jpg',
      'description': 'Havin\' fun',
    },
    {
      'link': 'assets/images/img3.jpg',
      'description': '2022 Tour',
    },
    {
      'link': 'assets/images/img4.jpg',
      'description': 'Hi !',
    },
    {
      'link': 'assets/images/img5.jpg',
      'description': 'Head above water',
    },
    {
      'link': 'assets/images/img6.jpg',
      'description': 'Complicated',
    },
    {
      'link': 'assets/images/img7.jpg',
      'description': 'Tracks list',
    },
    {
      'link': 'assets/images/img8.jpg',
      'description': 'What the hell',
    },
    {
      'link': 'assets/images/img10.jpg',
      'description': 'Sk8ter Boy',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Photos',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(3),
                child: Column(
                  children: [
                    Card(
                      elevation: 7,
                      child: Image.asset(
                        imgDetails[0]['link'],
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Text(
                      imgDetails[0]['description'],
                    ),
                 ],
              ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(3),
                child: Column(
                  children: [
                    Card(
                      elevation: 7,
                      child: Image.asset(
                        imgDetails[1]['link'],
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Text(
                      imgDetails[1]['description'],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(3),
                child: Column(
                  children: [
                    Card(
                      elevation: 7,
                      child: Image.asset(
                        imgDetails[2]['link'],
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Text(
                      imgDetails[2]['description'],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(3),
                child: Column(
                  children: [
                    Card(
                      elevation: 7,
                      child: Image.asset(
                        imgDetails[3]['link'],
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Text(
                      imgDetails[3]['description'],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(3),
                child: Column(
                  children: [
                    Card(
                      elevation: 7,
                      child: Image.asset(
                        imgDetails[4]['link'],
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Text(
                      imgDetails[4]['description'],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(3),
                child: Column(
                  children: [
                    Card(
                      elevation: 7,
                      child: Image.asset(
                        imgDetails[5]['link'],
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Text(
                      imgDetails[5]['description'],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(3),
                child: Column(
                  children: [
                    Card(
                      elevation: 7,
                      child: Image.asset(
                        imgDetails[6]['link'],
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Text(
                      imgDetails[6]['description'],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(3),
                child: Column(
                  children: [
                    Card(
                      elevation: 7,
                      child: Image.asset(
                        imgDetails[7]['link'],
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Text(
                      imgDetails[7]['description'],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(3),
                child: Column(
                  children: [
                    Card(
                      elevation: 7,
                      child: Image.asset(
                        imgDetails[8]['link'],
                        width: 80,
                        height: 80,
                      ),
                    ),
                    Text(
                      imgDetails[8]['description'],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(thickness: 1,),
        ],
      ),
    );
  }
}

class Publications extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Publications de Avril Lavigne',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/profil_1.jpg'),
                        backgroundColor: Colors.white,
                        radius: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                  'Avril Lavigne',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                              ),
                              Icon(
                                Icons.check_circle,
                                color: v_blue,
                                size: 14,
                              ),
                            ],
                          ),
                          SizedBox(height: 3,),
                          Row(
                            children: [
                              Text(
                                '16 nov.',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                ' - ',
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 12,
                                ),
                              ),
                              Icon(
                                Icons.public,
                                color: Colors.black,
                                size: 14,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What is your favorite lyric from "Bite me" ?',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  'http://avrillavigne.lnk.to/biteme',
                  style: TextStyle(
                    color: v_blue,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 1,),
                Text(
                  'Voir la traduction',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(width: 5,),
                    Icon(
                      Icons.thumb_up,
                      color: v_blue,
                      size: 20,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      '5287',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text(
                      '1026',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      'commentaires',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 12,),
                    Text(
                        '129',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      'partages',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        // Respond to button press
                      },
                      icon: Icon(
                          Icons.thumb_up_alt_outlined,
                          size: 18,
                        color: Colors.grey[800],
                      ),
                      label: Text(
                          "J'aime",
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {
                        // Respond to button press
                      },
                      icon: Icon(
                          Icons.message_outlined,
                          size: 18,
                        color: Colors.grey[800],
                      ),
                      label: Text(
                          "Commenter",
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {
                        // Respond to button press
                      },
                      icon: Icon(
                          Icons.share,
                          size: 18,
                        color: Colors.grey[800],
                      ),
                      label: Text(
                          "Partager",
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    )
                  ],
                ),
                Divider(thickness: 5,)
                ],
              ),
          ),
      ],
    ),
    );
  }
}
