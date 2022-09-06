import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            indicatorColor: Colors.transparent,
            controller: tabController,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.more,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.navigation,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
            ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Moda App',
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Serrat",
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              // ignore: prefer_const_constructors
              icon: Icon(
                color: Colors.grey,
                Icons.camera_alt,
              ))
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.transparent,
            height: 150,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(15),
              scrollDirection: Axis.horizontal,
              children: [
                personListItem('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                personListItem('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                personListItem('assets/model3.jpeg', 'assets/chloelogo.png'),
                const SizedBox(
                  width: 30,
                ),
                personListItem('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                personListItem('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                personListItem('assets/model3.jpeg', 'assets/chloelogo.png'),
                const SizedBox(
                  width: 30,
                ),
                personListItem('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                const SizedBox(
                  width: 30,
                ),
                personListItem('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                const SizedBox(
                  width: 30,
                ),
                personListItem('assets/model3.jpeg', 'assets/chloelogo.png'),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.transparent,
              child: Container(
                height: 470,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: const DecorationImage(
                                image: AssetImage('assets/model1.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 150,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Daisy',
                                style: TextStyle(
                                    fontFamily: 'serrat',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '2 minutes ago',
                                style: TextStyle(
                                  fontFamily: 'serrat',
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              )
                            ]),
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
                    'This offical website  featuresa ribbed knit zipper jacket that is'
                    'modern and stylish. It look very templament and is recommend to friends ',
                    style: TextStyle(
                      fontFamily: 'serrat',
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 200,
                        width: (MediaQuery.of(context).size.width - 50) / 2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('assets/modelgrid1.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width:
                                (MediaQuery.of(context).size.width - 100) / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage('assets/modelgrid2.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 95,
                            width:
                                (MediaQuery.of(context).size.width - 100) / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage('assets/modelgrid3.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 105,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.3)),
                        child: const Center(
                          child: Text(
                            '# Lois Vuitton',
                            style: TextStyle(
                                fontFamily: 'Serrat',
                                fontSize: 10,
                                color: Colors.brown),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.3)),
                        child: const Center(
                          child: Text(
                            '# Chloe',
                            style: TextStyle(
                                fontFamily: 'Serrat',
                                fontSize: 10,
                                color: Colors.brown),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.reply,
                          color: Colors.brown.withOpacity(0.3),
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '1.7k',
                          style: TextStyle(color: Colors.brown, fontSize: 14),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.brown.withOpacity(0.3),
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '325',
                          style: TextStyle(color: Colors.brown, fontSize: 14),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '2.3k',
                                style: TextStyle(
                                    color: Colors.brown, fontSize: 14),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget personListItem(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
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
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(image: AssetImage(logoPath))),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              color: Colors.brown, borderRadius: BorderRadius.circular(22)),
          child: const Center(
              child: Text(
            'Follow',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
        )
      ],
    );
  }
}
