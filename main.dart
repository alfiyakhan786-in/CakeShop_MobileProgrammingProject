import 'package:flutter/material.dart';
void main() {
  runApp(CakeShopApp());
}

class CakeShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dazzles Bliss Cakes",
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor:  Color(0xfffff7fb),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffd81b60)),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffffc1d9),
          foregroundColor: Color(0xff6a1b3f),
          titleTextStyle: TextStyle(color: Color(0xff6a1b3f),
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,),),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor:  Colors.pinkAccent.shade100,
            foregroundColor: Colors.white,
            textStyle:TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            padding:EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          ),
        ),
      ),
      home:HomePage(),);
  }
}


class HomePage extends StatelessWidget {
  final List<Map<String, String>> famousCakes = [
    {
      "name": "Chocolate Cake",
      "image":
      "https://images.unsplash.com/photo-1578985545062-69928b1d9587",
    },
    {
      "name": "Red Velvet Cake",
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgyz0_EpEd0DQIJollF_D44RFfOu3nUxAnyu3Sah_1EnSbk8ff3_fo1PA&s=10",
    },
    {
      "name": "Strawberry Cake",
      "image":
      "https://images.unsplash.com/photo-1565958011703-44f9829ba187",
    },
    {
      "name": "Birthday Cake",
      "image":
      "https://images.unsplash.com/photo-1559620192-032c4bc4674e",
    },
    {
      "name": "Baby Cake",
      "image":
      "https://images.unsplash.com/photo-1558301211-0d8c8ddee6ec",
    },
    {
      "name": "Wedding Cake",
      "image":
      "https://images.unsplash.com/photo-1522673607200-164d1b6ce486",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:Text( "Dazzle Bliss Cake",style: TextStyle(color: Colors.black,
            fontSize: 40,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
          ),
          centerTitle:true,
          backgroundColor: Colors.pink.shade100,
        ) ,
        body: ListView(
            children: [
// Hero section
              Container(
                height: 280,
                margin: EdgeInsets.all(15),
                padding:  EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color:  Colors.pink.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
// LEFT SIDE DETAILS
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "WELCOME TO",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Dazzle Bliss\nCakes",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Baked with love,\nmade for moments.",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      CategoryPage(),
                                ),
                              );
                            },
                            child:  Text("Explore More",style: TextStyle(fontWeight: FontWeight.bold,fontStyle:FontStyle.italic,fontSize: 20,color:
                            Colors.black87),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
// RIGHT SIDE IMAGE
                    Expanded(
                      child: Container(
                        height: 270,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image:  DecorationImage(
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1578985545062-69928b1d9587",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              Center(
                child: Text(
                  "Famous in Our Shop",
                  style: TextStyle(
                    fontSize:40,
                    fontWeight: FontWeight.bold, fontStyle:FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: famousCakes.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 210,
                      margin: EdgeInsets.only(
                        left: 15,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        color:  Colors.pink.shade50,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  famousCakes[index]["image"]!,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            famousCakes[index]["name"]!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
//SPECIALITY

              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color:  Colors.pink.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Center(
                      child: Text(
                        "Our Speciality",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color:Colors.black87,
                        ),
                      ),
                    ),

                    SizedBox(height: 25),

                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Color(0xffd81b60),
                          size: 35,
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Custom Cakes",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff6a1b3f),
                              ),
                            ),
                            Text("Made specially for you"),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    Row(
                      children: [
                        Icon(
                          Icons.delivery_dining,
                          color: Color(0xffd81b60),
                          size: 35,
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Fast Delivery",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff6a1b3f),
                              ),
                            ),
                            Text("Delivered fresh and on time"),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    Row(
                      children: [
                        Icon(
                          Icons.cake,
                          color: Color(0xffd81b60),
                          size: 35,
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Freshly Baked",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff6a1b3f),
                              ),
                            ),
                            Text("Fresh cakes made with quality ingredients"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

// Footer
              Container(
                padding: EdgeInsets.all(25),
                color: Color(0xffc2185b),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dazzle Bliss Cakes",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 15),

                    Text(
                      "Making every celebration sweeter with delicious and freshly baked cakes.",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      "Contact Us",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "Phone: +91 98765 43210",
                      style: TextStyle(color: Colors.white),
                    ),

                    SizedBox(height: 8),

                    Text(
                      "Email: Dazzlesbilsss@gmail.com",
                      style: TextStyle(color: Colors.white),
                    ),

                    SizedBox(height: 8),

                    Text(
                      "Mumbai, Maharashtra",
                      style: TextStyle(color: Colors.white),
                    ),

                    SizedBox(height: 25),

                    Center(
                      child: Text(
                        "© 2026 Dazzle Bliss Cakes. All Rights Reserved.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]
        )
    );
  }
}

//CATEGORY PAGE
class CategoryPage extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {
      "name": "Cakes",
      "description": "Delicious cakes for every celebration",
      "image":
      "https://images.unsplash.com/photo-1578985545062-69928b1d9587",
    },
    {
      "name": "Pastries",
      "description": "Fresh and tasty pastries",
      "image":
      "https://images.unsplash.com/photo-1603532648955-039310d9ed75",
    },
    {
      "name": "Cupcakes",
      "description": "Small and delicious cupcakes",
      "image":
      "https://images.unsplash.com/photo-1519869325930-281384150729",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Our Categories"),
      ),
      body: ListView.builder(
        padding:EdgeInsets.all(15),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(
                    category: categories[index]["name"]!,
                  ),
                ),
              );
            },
            child: Container(
              height: 150,
              margin: EdgeInsets.only(bottom: 15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.pink.shade50,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(
                          categories[index]["image"]!,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          categories[index]["name"]!,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          categories[index]["description"]!,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Explore →",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
// PRODUCT PAGE
class ProductPage extends StatelessWidget {
  final String category;
  ProductPage({
    super.key,
    required this.category,
  });
  List<Map<String, dynamic>> getProducts() {
    if (category == "Cakes") {
      return [
        {
          "name": "Birthday Cake",
          "price": 399,
          "description":
          "A beautiful birthday cake perfect for celebrating special moments with family and friends.",
          "image":
          "https://images.unsplash.com/photo-1559620192-032c4bc4674e",
        },
        {
          "name": "Baby Cake",
          "price": 499,
          "description":
          "A cute and delicious cake specially designed for baby celebrations.",
          "image":
          "https://images.unsplash.com/photo-1558301211-0d8c8ddee6ec",
        },
        {
          "name": "Chocolate Cake",
          "price": 500,
          "description":
          "A rich chocolate cake made with delicious chocolate cream.",
          "image":
          "https://images.unsplash.com/photo-1578985545062-69928b1d9587",
        },
        {
          "name": "Wedding Cake",
          "price": 789,
          "description":
          "An elegant wedding cake designed to make your special day sweeter.",
          "image":
          "https://images.unsplash.com/photo-1522673607200-164d1b6ce486",
        },
        {
          "name": "Anniversary Cake",
          "price": 499,
          "description":
          "A beautiful cake perfect for celebrating anniversaries and special memories.",
          "image":
          "https://regalodelights.com/cdn/shop/files/WhatsAppImage2024-04-06at4.23.33PM_1.jpg?v=1712487251",
        },
        {
          "name": "Photo Cake",
          "price": 570,
          "description":
          "A personalised photo cake for birthdays, anniversaries and celebrations.",
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKysh_ziR5G1Fmwsc1YS77qO-yIB-QyXazObo7FgJsH1SNmKg2Q33JcvNF&s=10",
        },
        {
          "name": "Truffle Cake",
          "price": 750,
          "description":
          "A beautiful Truffle cake perfect for celebrating special moments with family and friends.",
          "image":
          "https://cremecastle.in/cdn/shop/files/C4430_81106886-f2ca-4630-a6e0-bb5961363e2f.jpg?v=1745560597",
        },
        {
          "name": "Baby Cake",
          "price": 699,
          "description":
          "A cute and delicious cake specially designed for baby celebrations.",
          "image":
          "https://regalodelights.com/cdn/shop/files/WhatsAppImage2024-03-14at7.00.48PM_2.jpg?v=1710423638",
        },
        {
          "name": "Friut Cake",
          "price": 500,
          "description":
          "A rich chocolate cake made with delicious chocolate cream.",
          "image":
          "https://assets.winni.in/product/primary/2026/6/110298.jpeg?dpr=1&w=500",
        },

      ];
    }

    if (category == "Cupcakes") {
      return [
        {
          "name": "Chocolate Cupcake",
          "price": 100,
          "description":
          "Soft chocolate cupcake topped with delicious chocolate cream.",
          "image":
          "https://cookiesandcups.com/wp-content/uploads/2012/01/Really-Yummy-Chocolate-Cupcakes-11.jpg",
        },
        {
          "name": "Vanilla Cupcake",
          "price": 90,
          "description":
          "Light and fluffy vanilla cupcake with creamy vanilla frosting.",
          "image":
          "https://images.unsplash.com/photo-1519869325930-281384150729",
        },
        {
          "name": "Red Velvet Cupcake",
          "price": 120,
          "description":
          "Delicious red velvet cupcake with smooth cream frosting.",
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuiCVwC4I044okrJXGs6hnkd0IreAv7j-9E5YrUBcim8QY1BIF4K-4RZn6&s=10",
        },
        {
          "name": "Strawberry Cupcake",
          "price": 100,
          "description":
          "Soft chocolate cupcake topped with delicious chocolate cream.",
          "image":
          "https://cookiesandcups.com/wp-content/uploads/2009/07/strawberry-cupcakes-19.jpg",
        },
        {
          "name": "Friut Cupcake",
          "price": 90,
          "description":
          "Light and fluffy vanilla cupcake with creamy vanilla frosting.",
          "image":
          "https://www.sugarsaltmagic.com/wp-content/uploads/2024/06/Passionfruit-Cupcakes-with-Coconut-Frosting-10FEAT.jpg",
        },
        {
          "name": " Coconut Cupcake",
          "price": 120,
          "description":
          "Delicious red velvet cupcake with smooth cream frosting.",
          "image":
          "https://www.cookingclassy.com/wp-content/uploads/2017/03/coconut-cupcakes-66.jpg",
        },

      ];
    }
    if (category == "Pastries") {
      return [

        {
          "name": "Chocolate Pastry",
          "price": 120,
          "description":
          "Fresh chocolate pastry with soft cake layers and chocolate cream.",
          "image":
          "https://images.unsplash.com/photo-1603532648955-039310d9ed75",
        },
        {
          "name": "Black Forest Pastry",
          "price": 130,
          "description":
          "Soft black forest pastry topped with cream and chocolate.",
          "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFK5h9WxshLtNC8_t_cO_Y52BuYum1SzKFdghVr7jRNtDwMvDmw1S7orCv&s=10",
        },
        {
          "name": "Red Velvet Pastry",
          "price": 140,
          "description":
          "Fresh red velvet pastry with smooth creamy layers.",
          "image":
          "https://upload.wikimedia.org/wikipedia/commons/b/b2/Red_Velvet_Cake_Waldorf_Astoria.jpg?utm_source=en.wikipedia.org&utm_campaign=index&utm_content=original",
        },
        {
          "name": "Vanilla Pastry",
          "price": 120,
          "description":
          "Fresh chocolate pastry with soft cake layers and chocolate cream.",
          "image":
          "https://jambubakers.com/wp-content/uploads/2024/01/VANILLA-PASTRY-1.jpg",
        },
        {
          "name": "Pineapple Pastry",
          "price": 130,
          "description":
          "Soft black forest pastry topped with cream and chocolate.",
          "image":
          "https://images.squarespace-cdn.com/content/v1/5f3e4349fc4de33b1586a0c2/1628849437661-MZWSLV00WQAX2S1966IY/IMG_0069.jpg",
        },
        {
          "name": " dark chocolate Pastry",
          "price": 140,
          "description":
          "Fresh red velvet pastry with smooth creamy layers.",
          "image":
          "https://theobroma.in/cdn/shop/files/EgglessRichChocolatePastry.jpg?v=1750341628",
        },

      ];
    }
    return [];
  }
  @override
  Widget build(BuildContext context) {
    final products = getProducts();
    return Scaffold(
      backgroundColor: Color(0xfffff7fb),
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        title: Text("$category "),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding:  EdgeInsets.all(15),
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 7,
          mainAxisSpacing: 9,
          childAspectRatio: 0.7,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CakeDetailPage(
                    name: products[index]["name"],
                    price: products[index]["price"],
                    image: products[index]["image"],
                    description: products[index]["description"],
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow:  [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius:  BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.network(
                        products[index]["image"],
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    products[index]["name"],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "${products[index]["price"]}",
                    style: TextStyle(
                      color:Color(0xffd81b60),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
//  CAKE DETAILS
class CakeDetailPage extends StatefulWidget {
  final String name;
  final int price;
  final String image;
  final String description;
  CakeDetailPage({
    super.key,
    required this.name,
    required this.price,
    required this.image,
    required this.description,
  });
  @override
  State<CakeDetailPage> createState() =>
      _CakeDetailPageState();
}
class _CakeDetailPageState
    extends State<CakeDetailPage> {
  int totalPrice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [

//  IMAGE
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              widget.image,
              width: double.infinity,
              height: 300,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 20),
// NAME
          Text(
            widget.name,
            style:  TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
// DESCRIPTION
          Text(
            "Description",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "A freshly baked and delicious cake made especially for your celebrations. "
                "You can choose the weight according to your requirement.",
          ),
          SizedBox(height: 20),
// INGREDIENTS
          Text(
            "Ingredients",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Flour, Sugar, Milk, Butter, Fresh Cream, Chocolate, Vanilla and other fresh ingredients.",
          ),
          SizedBox(height: 25),
// PRICE
          Container(
            padding:  EdgeInsets.all(20),
            decoration: BoxDecoration(
              color:  Color(0xffffe4ef),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [

                Text(
                  "Total Price: ${widget.price}",
                  style:  TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color:  Color(0xffd81b60),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DeliveryPage(
                    cakeName: widget.name,
                    price: widget.price,
                  ),
                ),
              );
            },
            child: Text(
              "Buy Now",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color:  Color(0xff6a1b3f),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//  DELIVERY PAGE
class DeliveryPage extends StatefulWidget {
  final String cakeName;
  final int price;
  DeliveryPage({
    super.key,
    required this.cakeName,
    required this.price,
  });
  @override
  State<DeliveryPage> createState() =>
      _DeliveryPageState();
}
class _DeliveryPageState extends State<DeliveryPage> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final dateController = TextEditingController();
  String selectedTime = "10:00 AM - 12:00 PM";
  final List<String> deliveryTimes = [
    "10:00 AM - 12:00 PM",
    "12:00 PM - 2:00 PM",
    "2:00 PM - 4:00 PM",
    "4:00 PM - 6:00 PM",
    "6:00 PM - 8:00 PM",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff7fb),
      appBar: AppBar(
        title: Text("Delivery Details"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(
            "Your Order: ${widget.cakeName}",
            style:  TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text("Cake Price: ${widget.price}"),
          SizedBox(height: 25),
          Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration:  InputDecoration(
                    labelText: "Full Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 15),
                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter phone number";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 15),
                TextFormField(
                  controller: addressController,
                  maxLines: 3,
                  decoration:  InputDecoration(
                    labelText: "Delivery Address",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter address";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 15),
                TextFormField(
                  controller: dateController,
                  decoration:  InputDecoration(
                    labelText: "Delivery Date",
                    hintText: "Example: 30 August 2026",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter delivery date";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 15),
               DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: "Delivery Time",
                    border: OutlineInputBorder(),
                  ),
                  items: deliveryTimes.map((time) {
                    return DropdownMenuItem(
                      value: time,
                      child: Text(time),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedTime = value!;
                    });
                  },
                ),
                SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderSummaryPage(
                            cakeName: widget.cakeName,
                            price: widget.price,
                            name: nameController.text,
                            phone: phoneController.text,
                            address: addressController.text,
                            date: dateController.text,
                            time: selectedTime,
                          ),
                        ),
                      );
                    }
                  },
                  child:  Text("Continue"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//  ORDER SUMMARY
class OrderSummaryPage extends StatelessWidget {
  final String cakeName;
  final int price;
  final String name;
  final String phone;
  final String address;
  final String date;
  final String time;
  OrderSummaryPage({
    super.key,
    required this.cakeName,
    required this.price,
    required this.name,
    required this.phone,
    required this.address,
    required this.date,
    required this.time,
  });
  @override
  Widget build(BuildContext context) {
    int deliveryCharge = 50;
    int total = price + deliveryCharge;
    return Scaffold(
      appBar: AppBar(
        title:  Text("Order Summary"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            padding:  EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xffffe4ef),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  "Cake Details",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text("Cake: $cakeName"),
                SizedBox(height: 15),
                Text("Cake Price: $price"),
                Text("Delivery Charge: $deliveryCharge"),
                SizedBox(height: 10),
                Text(
                  "Total Amount: $total",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:  Color(0xffd81b60),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Text(
            "Delivery Details",
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          Text("Name: $name"),
          Text("Phone: $phone"),
          Text("Address: $address"),
          Text("Date: $date"),
          Text("Time: $time"),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      OrderSuccessPage(),
                ),

              );
            },
            child: Text("Confirm Order"),
          ),
        ],
      ),
    );
  }
}
// SUCCESS PAGE
class OrderSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Container(
          color:  Colors.pink.shade50,
          padding:  EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 100,
              ),
              SizedBox(height: 20),
              Text(
                "Thank You!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Your order has been successfully placed!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Your delicious order will be delivered at your selected time.",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HomePage(),
                    ),
                  );
                },
                child: Text("Back to Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}