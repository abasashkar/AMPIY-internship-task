import 'package:flutter/material.dart';
import 'package:internship_task/pages/coins.dart';
import 'package:internship_task/pages/home.dart';
import 'package:internship_task/pages/settings.dart';
import 'package:internship_task/pages/swap.dart';
import 'package:internship_task/pages/wallet.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  late List<Widget> pages;
  late HoemPage homePage;
  late CoinPage coinPage;
  late SettingPage settingPage;
  late WalletPage walletPage;
  late SwapPage swapPage;
  int currentTabIndex = 0;

  @override
  void initState() {
    homePage = const HoemPage();
    coinPage = const CoinPage();
    swapPage = const SwapPage();
    walletPage = const WalletPage();
    settingPage = const SettingPage();
    pages = [homePage, coinPage, settingPage, swapPage, walletPage];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_exchange),
            label: 'Coins',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swipe_left),
            label: 'Swap',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_sharp),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Settings',
          ),
        ],
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
      body: pages[currentTabIndex],
    );
  }
}
