import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {

  Widget singalProducts(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
        height: 230,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Image.network(
                      'https://imagensemoldes.com.br/wp-content/uploads/2020/06/Foto-Fone-de-Ouvido-PNG.png')),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Fresh Basil',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Fresh Basil',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 2),
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      border:
                                      Border.all(color: Colors.grey),
                                      borderRadius:
                                      BorderRadius.circular(10)),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Text(
                                            "50 gram",
                                            style: TextStyle(fontSize: 10),
                                          )),

                                      Center(
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          size: 20,
                                          color: Colors.amber,
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey),
                                    borderRadius:
                                    BorderRadius.circular(10)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.remove,size: 20,),
                                    Text("1"),
                                    Icon(Icons.add, size: 20,)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ))
            ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Home',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Color(0xff0a22b4).withOpacity(0.3),
              radius: 12,
              child: Icon(
                Icons.search,
                size: 17,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Color(0xff0a22b4).withOpacity(0.3),
                child: Icon(
                  Icons.shop_2,
                  size: 17,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        backgroundColor: Color(0xffd6b788),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://www.showmetech.com.br/wp-content/uploads/2022/04/Design-sem-nome-69.png')),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red),
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(

                          child: Column(

                            children: [
                              Padding(

                                padding: const EdgeInsets.only(
                                    right: 150, bottom: 10),
                                child: Container(

                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(100),
                                        bottomRight: Radius.circular(100),
                                      )),
                                  child: Center(
                                    child: Text(

                                      "Algo",
                                      style: TextStyle(fontSize: 25, shadows: [
                                        BoxShadow(
                                            color: Colors.green,
                                            blurRadius: 10,
                                            offset: Offset(3, 3))
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '100% Off',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '100% Off',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )),
                    Expanded(child: Container())
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('categoria inicial'), Text("ver todos")],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('categoria secundaria'), Text("ver todos")],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
