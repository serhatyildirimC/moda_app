import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String imgPath;
  const Details({Key? key, required this.imgPath}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
              left: 15,
              right: 15,
              bottom: 15,
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 4,
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: 100,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: const DecorationImage(
                                    image: AssetImage('assets/dress.jpg'),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'LAMINATED',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Serrat',
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Louis vuitton',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'serrat',
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.design_services_sharp)
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 30,
                              width: MediaQuery.of(context).size.width - 170,
                              child: const Text(
                                'One button V-neck sling long-sleeved waist female stitching drees',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'serrat'),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, top: 5, bottom: 1, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '\$6500',
                            style:
                                TextStyle(fontFamily: 'serrat', fontSize: 22),
                          ),
                          FloatingActionButton(
                            onPressed: (() {}),
                            backgroundColor: Colors.brown,
                            child: const Icon(Icons.arrow_forward_ios),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ))
        ],
      ),
    );
  }
}
