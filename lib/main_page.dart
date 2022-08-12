// ignore_for_file: camel_case_types, non_constant_identifier_names
import 'package:flutter/material.dart';

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

//for the addition and subtraction of items
int add1 = 0;
int add2 = 0;
int add3 = 0;

//for the pressing of the favourite sign
bool _isfavourited1 = false;
bool _isfavourited2 = false;
bool _isfavourited3 = false;

//for the favourite signs
Color IconA = Colors.white;
Color IconB = Colors.white;
Color IconC = Colors.white;

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //heading
      appBar: AppBar(
        title: const Text("My Shop"),
        backgroundColor: const Color.fromARGB(255, 241, 51, 3),
      ),
      body: Column(children: [
//first box
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 3, 70, 121),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    //icon state
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              (_isfavourited1 == false)
                                  ? IconA =
                                      const Color.fromARGB(210, 252, 250, 250)
                                  : IconA =
                                      const Color.fromARGB(255, 255, 4, 4);
                            });
                          },
                          color: IconA,
                          icon: Icon(
                            (_isfavourited1 == false)
                                ? (Icons.favorite_border_outlined)
                                : Icons.favorite,
                            size: 28,
                          )),
                    ),
                    // Text part
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width - 100,
                          child: const Text(
                            "Shoes",
                            style: TextStyle(
                              fontSize: 28,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    //shopping icon part
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Color.fromARGB(255, 26, 21, 20),
                        size: 28,
                      ),
                    ),
                  ],
                ),
                //image1 insertion part
                Container(
                  width: 230,
                  margin: const EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image: AssetImage("assets/shoes.jpg"),
                    ),
                  ),
                ),
                //addition and subtraction of items part
                //item changer
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //condition not less than 0
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (add1 > 0) {
                                add1--;
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.remove_circle_outline,
                            size: 28,
                          ),
                        ),
                        Text(
                          ' $add1',
                          style: const TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              add1++;
                            });
                          },
                          icon: const Icon(
                            Icons.add_circle_outline,
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )),

//second box
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 3, 70, 121),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    //favorite icon check
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              _isfavourited2 = !_isfavourited2;
                              (_isfavourited2 == false)
                                  ? IconB = const Color.fromARGB(0, 0, 0, 0)
                                  : IconB =
                                      const Color.fromARGB(255, 255, 0, 0);
                            });
                          },
                          color: IconB,
                          icon: Icon(
                            (_isfavourited2 == false)
                                ? (Icons.favorite_border_outlined)
                                : Icons.favorite,
                            size: 28,
                          )),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width - 100,
                          child: const Text(
                            "T - shirt",
                            style: TextStyle(
                              fontSize: 28,
                              color: Color.fromARGB(255, 255, 243, 212),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          )),
                    ),

                    //cart icon
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Color.fromARGB(255, 26, 21, 20),
                        size: 28,
                      ),
                    ),
                  ],
                ),

                //image2
                Container(
                  width: 190,
                  margin: const EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image: AssetImage("assets/shirt.jpg"),
                    ),
                  ),
                ),
                //item changer
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (add2 > 0) {
                                add2--;
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.remove_circle_outline,
                            size: 28,
                          ),
                        ),
                        Text(
                          ' $add2',
                          style: const TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              add2++;
                            });
                          },
                          icon: const Icon(
                            Icons.add_circle_outline,
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
//third box
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 3, 70, 121),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    //favorite icon
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              _isfavourited3 = !_isfavourited3;
                              (_isfavourited3 == false)
                                  ? IconB = const Color.fromARGB(211, 0, 0, 0)
                                  : IconB =
                                      const Color.fromARGB(255, 255, 0, 0);
                            });
                          },
                          color: IconB,
                          icon: Icon(
                            (_isfavourited3 == false)
                                ? (Icons.favorite_border_outlined)
                                : Icons.favorite,
                            size: 28,
                          )),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width - 120,
                          child: const Text(
                            "Pants",
                            style: TextStyle(
                              fontSize: 28,
                              color: Color.fromARGB(255, 255, 243, 212),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          )),
                    ),

                    //cart icon
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Color.fromARGB(255, 26, 21, 20),
                        size: 28,
                      ),
                    ),
                  ],
                ),

                //image3
                Container(
                  width: 130,
                  margin: const EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image: AssetImage("assets/pants.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                //item changer
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (add3 > 0) {
                                add3--;
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.remove_circle_outline,
                            size: 28,
                          ),
                        ),
                        Text(
                          ' $add3',
                          style: const TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              add3++;
                            });
                          },
                          icon: const Icon(
                            Icons.add_circle_outline,
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ))
      ]),
    );
  }
}


/*
 child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(0),
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    //alignment: Alignment.topLeft,
                    icon: (_isFavourited
                        ? const Icon(Icons.favorite)
                        : const Icon(Icons.favorite_border)),
                    color: Colors.red,
                    onPressed: _toggleFavourtie,
                  ),
*/
