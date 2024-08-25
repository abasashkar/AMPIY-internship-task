import 'package:flutter/material.dart';
import 'package:internship_task/widgets/support.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'dart:convert';

class CoinPage extends StatefulWidget {
  const CoinPage({super.key});

  @override
  State<CoinPage> createState() => _CoinPageState();
}

class _CoinPageState extends State<CoinPage> {
  late WebSocketChannel channel;
  List<Map<String, dynamic>> coins = [];

  @override
  void initState() {
    super.initState();
    // Initialize WebSocketChannel
    channel = WebSocketChannel.connect(
      Uri.parse('ws://prereg.ex.api.ampiy.com/prices'),
    );

    // Subscribe to the WebSocket feed
    channel.sink
        .add('{"method": "SUBSCRIBE", "params": ["all@ticker"], "cid": 1}');

    // Listen to the WebSocket stream and update the UI
    channel.stream.listen(
      (message) {
        print("Received message: $message");
        final data = parseWebSocketData(message);
        setState(() {
          coins = data;
        });
      },
      onError: (error) {
        print("WebSocket error: $error");
      },
      onDone: () {
        print("WebSocket connection closed");
      },
    );
  }

  // A function to parse WebSocket data
  List<Map<String, dynamic>> parseWebSocketData(String message) {
    final Map<String, dynamic> decodedMessage = jsonDecode(message);

    return List<Map<String, dynamic>>.from(decodedMessage['data'].map((ticker) {
      return {
        'symbol': ticker['s'],
        'currentPrice': ticker['c'].toString(),
        'percentageChange': ticker['P'].toString(),
        'isPositive': double.parse(ticker['P']) >= 0,
      };
    }));
  }

  @override
  void dispose() {
    // Close the WebSocket connection when the widget is disposed
    channel.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'COINS',
                style: AppWidget.semiboldTextFieldStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: coins.length,
                itemBuilder: (context, index) {
                  final coin = coins[index];
                  return ListTile(
                    leading: Image.asset(
                      _getIconPath(coin['symbol']),
                      width: 40,
                      height: 40,
                    ),
                    title: Text(
                      coin['symbol'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      _getCoinName(coin['symbol']),
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '₹ ${coin['currentPrice']}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              coin['isPositive']
                                  ? Icons.arrow_upward
                                  : Icons.arrow_downward,
                              color: coin['isPositive']
                                  ? Colors.green
                                  : Colors.red,
                              size: 16,
                            ),
                            Text(
                              '${coin['percentageChange']}%',
                              style: TextStyle(
                                color: coin['isPositive']
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to get the image path based on the coin symbol
  String _getIconPath(String symbol) {
    switch (symbol) {
      case 'BTCINR':
        return 'assets/images-2.jpeg';
      case 'ETHINR':
        return 'assets/Ethereum-logo.png';
      case 'ATOMINR':
        return 'assets/images-3.jpeg';
      case 'ADAINR':
        return 'assets/26C3509EFBDB21B6702EEE217E01F2DC790E7FB10045BD01FC9BD411D62BA6E0.jpg';
      case 'SOLINR':
        return 'assets/images.png';
      // Add cases for other coins if needed
      default:
        return 'assets/images.png'; // A default icon if the coin symbol is not matched
    }
  }

  // Helper function to get the coin name based on the coin symbol
  String _getCoinName(String symbol) {
    switch (symbol) {
      case 'BTCINR':
        return 'Bitcoin';
      case 'ETHINR':
        return 'Ethereum';
      case 'ATOMINR':
        return 'Atom';
      case 'ADAINR':
        return 'Cardano';
      case 'SOLINR':
        return 'Solana';
      // Add cases for other coins if needed
      default:
        return 'Unknown Coin';
    }
  }
}
