// Pending issue - dropdown widget not displaying value

import 'package:flutter/material.dart';
import 'package:tassist/menu.dart';
// import './myboxdecoration.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 12),
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => MenuScreen(),
                ),
              );
            },
          ),
        ),
        title: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'ABC Pvt Ltd',
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 2.5,
                  ),
                ),
                const Text(
                  'Total Revenue: 123\$',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 12,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            DropdownButton(
              value: '1 month',
              items: <String>['1 month', '3 months', '6 months', '1 year']
                  .map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (_) {},
              // isExpanded: true,
            ),
          ],
        ),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_alarm),
            onPressed: null,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(4.0, 1.0, 10.0, 1.0),
              child: Text(
                'Your Tally is Connected!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            color: const Color(0xff14D2B8),
            width: MediaQuery.of(context).size.width,
            height: 20,
          ),
          // Container 1 - Sales
          Container(
            child: SalesDashboardWidget(),
            margin: const EdgeInsets.all(15.0),
            // decoration: myBoxDecoration()
          ),
          Container(
            color: Color(0xffF3EEFE),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Product Wise Sales',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.play_arrow,
                  color: Colors.purple[800],
                )
              ],
            ),
          ),
          // Container 2 - Purchases
          Container(
            child: PurchaseDashboardWidget(),
            margin: const EdgeInsets.all(20.0),
            // decoration: myBoxDecoration()
          ),
          Container(
            color: Color(0xffF3EEFE),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Check Pending Purchase Orders',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.play_arrow,
                  color: Colors.purple[800],
                )
              ],
            ),
          ),
          Container(
            child: ExpenseDashboardWidget(),
            margin: const EdgeInsets.all(15.0),
            // decoration: myBoxDecoration()
          ),
          Container(
            color: Color(0xffF3EEFE),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Check Expenses',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.play_arrow,
                  color: Colors.purple[800],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'Cash In Hand',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Text(
                      '21,24,230',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Cash In Bank',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Text(
                      '12,51,332',
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Color(0xffF3EEFE),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Check Bank Reconciliation',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.play_arrow,
                  color: Colors.purple[800],
                )
              ],
            ),
          ),
          Container(
            child: OutstandingsDashboardWidget(),
            margin: const EdgeInsets.all(15.0),
            // decoration: myBoxDecoration()
          ),
          Container(
            color: Color(0xffF3EEFE),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Account Payables',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.play_arrow,
                  color: Colors.purple[800],
                )
              ],
            ),
          ),
          Container(
            color: Color(0xffF3EEFE),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Account Receivables',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.play_arrow,
                  color: Colors.purple[800],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.file_upload),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_download),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_none),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            title: SizedBox.shrink(),
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
  }
}

class SalesDashboardWidget extends StatelessWidget {
  const SalesDashboardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: SalesDashboardWidgetTitleRow(),
          ),
          const SizedBox(
            height: 20,
          ),
          SalesDashboardWidgetContentRow(),
        ],
      ),
    );
  }
}

class SalesDashboardWidgetContentRow extends StatelessWidget {
  const SalesDashboardWidgetContentRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.arrow_drop_up,
                    color: Colors.green,
                  ),
                  Text(
                    '20.3L',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              Text('Revenue'),
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.red,
                  ),
                  Text(
                    '200 Kg',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              Text('Quantity'),
            ],
          ),
        ),
      ],
    );
  }
}

class SalesDashboardWidgetTitleRow extends StatelessWidget {
  const SalesDashboardWidgetTitleRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Text(
                'Sales',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(
                Icons.info_outline,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.purple[800],
              ),
              Icon(
                Icons.bookmark,
                color: Colors.purple[800],
              ),
              Icon(
                Icons.share,
                color: Colors.purple[800],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PurchaseDashboardWidget extends StatelessWidget {
  const PurchaseDashboardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: PurchaseDashboardWidgetTitleRow(),
          ),
          const SizedBox(
            height: 20,
          ),
          PurchaseDashboardWidgetContentRow(),
        ],
      ),
    );
  }
}

class PurchaseDashboardWidgetContentRow extends StatelessWidget {
  const PurchaseDashboardWidgetContentRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.arrow_drop_up,
                    color: Colors.green,
                  ),
                  Text(
                    '6.8L',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              Text('Revenue'),
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.arrow_drop_up,
                    color: Colors.red,
                  ),
                  Text(
                    '24',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              Text('Open orders'),
            ],
          ),
        ),
      ],
    );
  }
}

class PurchaseDashboardWidgetTitleRow extends StatelessWidget {
  const PurchaseDashboardWidgetTitleRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Text(
                'Purchase',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(
                Icons.info_outline,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.purple[800],
              ),
              Icon(
                Icons.bookmark,
                color: Colors.purple[800],
              ),
              Icon(
                Icons.share,
                color: Colors.purple[800],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OutstandingsDashboardWidget extends StatelessWidget {
  const OutstandingsDashboardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: OutstandingsDashboardWidgetTitleRow(),
          ),
          const SizedBox(
            height: 20,
          ),
          OutstandingsDashboardWidgetContentRow(),
        ],
      ),
    );
  }
}

class OutstandingsDashboardWidgetContentRow extends StatelessWidget {
  const OutstandingsDashboardWidgetContentRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(' '),
            Text('Payables'),
            Text('Receivables'),
          ],
        ),
        Column(
          children: <Widget>[
            Text('Target'),
            Text('12,42,000'),
            Text('21,24,230'),
          ],
        ),
        Column(
          children: <Widget>[
            Text('Actual'),
            Text(
              '2,42,000',
              style: TextStyle(color: Colors.red),
            ),
            Text(
              '12,51,332',
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text('Avg. Delay'),
            Text(
              '43 days',
              style: TextStyle(color: Colors.red),
            ),
            Text(
              '23 days',
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
      ],
    );
  }
}

class OutstandingsDashboardWidgetTitleRow extends StatelessWidget {
  const OutstandingsDashboardWidgetTitleRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Text(
                'Outstandings',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(
                Icons.info_outline,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.purple[800],
              ),
              Icon(
                Icons.bookmark,
                color: Colors.purple[800],
              ),
              Icon(
                Icons.share,
                color: Colors.purple[800],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ExpenseDashboardWidget extends StatelessWidget {
  const ExpenseDashboardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: ExpenseDashboardWidgetTitleRow(),
          ),
          const SizedBox(
            height: 20,
          ),
          ExpenseDashboardWidgetContentRow(),
        ],
      ),
    );
  }
}

class ExpenseDashboardWidgetContentRow extends StatelessWidget {
  const ExpenseDashboardWidgetContentRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.arrow_drop_up,
                    color: Colors.green,
                  ),
                  Text(
                    '1.2L',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              Text('Total Expenses'),
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.red,
                  ),
                  Text(
                    '20k',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              Text('Unpaid expenses'),
            ],
          ),
        ),
      ],
    );
  }
}

class ExpenseDashboardWidgetTitleRow extends StatelessWidget {
  const ExpenseDashboardWidgetTitleRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Text(
                'Expenses',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(
                Icons.info_outline,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.purple[800],
              ),
              Icon(
                Icons.bookmark,
                color: Colors.purple[800],
              ),
              Icon(
                Icons.share,
                color: Colors.purple[800],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
