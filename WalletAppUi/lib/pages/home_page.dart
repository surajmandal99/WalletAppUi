// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/util/my_button.dart';
import 'package:walletappui/util/my_card.dart';
import 'package:walletappui/util/my_list_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Pagecontroller

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[200],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // App bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  //Plus button
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            // Cards
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5250.25,
                    cardNumber: 12347678,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.black,
                  ),
                  MyCard(
                    balance: 3320.10,
                    cardNumber: 12345678,
                    expiryMonth: 11,
                    expiryYear: 23,
                    color: Colors.blue[300],
                  ),
                  MyCard(
                    balance: 530.00,
                    cardNumber: 12345678,
                    expiryMonth: 12,
                    expiryYear: 22,
                    color: Colors.green[300],
                  ),
                  MyCard(
                    balance: 4450.00,
                    cardNumber: 12334378,
                    expiryMonth: 1,
                    expiryYear: 25,
                    color: Colors.orangeAccent,
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: WormEffect(
                activeDotColor: Colors.yellow,
              ),
            ),

            SizedBox(height: 20),

            // 3 buttons -> send + pay + bill
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Send Button
                  MyButton(
                    iconImagePath: 'lib/icons/send-money.png',
                    buttonText: 'Send',
                  ),

                  // Pay Button
                  MyButton(
                    iconImagePath: 'lib/icons/credit-card.png',
                    buttonText: 'Pay',
                  ),

                  // Bills Button

                  MyButton(
                    iconImagePath: 'lib/icons/bill.png',
                    buttonText: 'Bills',
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            // Column -> states + transactions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // Statistics
                  MyListTitle(
                    iconImagePath: 'lib/icons/statistics.png',
                    titleTitle: 'Statistics',
                    titleSubTitle: 'Payment and Income',
                  ),

                  // Transaction
                  MyListTitle(
                    iconImagePath: 'lib/icons/transaction.png',
                    titleTitle: 'Transactions',
                    titleSubTitle: 'Transaction History',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
