import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:intl/intl.dart';
// import 'package:random_user/model/user_model.dart';

import 'bloc/user.repository.dart';
import 'bloc/user_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  //final UserModel? user;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final bloc = UserBloc(UserRepository());

  @override
  void initState() {
    super.initState();
    bloc.add(GetUserEvent());
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Random User'),
        // ),
        body: BlocBuilder<UserBloc, UserState>(
          bloc: bloc,
          builder: (context, state) {
            if (state is UserLoaded) {
              return Container(
                height: 850,
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 80),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(state
                          .model.results!.first.picture!.medium
                          .toString()),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            '${state.model.results!.first.name!.title.toString()} '),
                        Text(
                            '${state.model.results!.first.name!.first.toString()} '),
                        Text(state.model.results!.first.name!.last.toString())
                      ],
                    ),

                    
                    DefaultTabController(
                      length: 3,
                      child: TabBar(
                        indicatorColor: Colors.black,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        controller: _tabController,
                        tabs: [
                          Tab(
                            text: 'Main Info',
                          ),
                          Tab(
                            text: 'Location',
                          ),
                          Tab(
                            text: 'Email',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Container(
                            color: Colors.brown[100],
                            child: Column(
                              children: [
                                SizedBox(height: 50),
                                Container(
                                  height: 300,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow[100],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: DataTable(
                                    columns: [
                                      DataColumn(label: Text('Name')),
                                      DataColumn(label: Text('Value'))
                                    ],
                                    rows: [
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text('First name'),
                                          ),
                                          DataCell(Text(state
                                              .model.results!.first.name!.first
                                              .toString())),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text('Last name'),
                                          ),
                                          DataCell(Text(state
                                              .model.results!.first.name!.last
                                              .toString())),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text('Gender'),
                                          ),
                                          DataCell(Text(state
                                              .model.results!.first.gender
                                              .toString())),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(Text('Date of Birth')),
                                          DataCell(Text(state
                                              .model.results!.first.dob!.date
                                              .toString())),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(Text('Age')),
                                          DataCell(Text(state
                                              .model.results!.first.dob!.age
                                              .toString())),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 50),
                                ElevatedButton(
                                  onPressed: () {
                                    bloc.add(GetUserEvent());
                                  },
                                  child: Text('Поиск'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.blue[100],
                            child: Column(
                              children: [
                                SizedBox(height: 50),
                                Container(
                                  height: 300,
                                  width: 350,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow[100],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: DataTable(
                                    columns: [
                                      DataColumn(label: Text('name')),
                                      DataColumn(label: Text('value'))
                                    ],
                                    rows: [
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text('country:'),
                                          ),
                                          DataCell(Text(state.model.results!
                                              .first.location!.country!
                                              .toString())),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text('state:'),
                                          ),
                                          DataCell(Text(state.model.results!
                                              .first.location!.state
                                              .toString())),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text('city:'),
                                          ),
                                          DataCell(Text(state.model.results!
                                              .first.location!.city!
                                              .toString())),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text('street:'),
                                          ),
                                          DataCell(Text(state.model.results!
                                              .first.location!.street!.name
                                              .toString())),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text('postcode:'),
                                          ),
                                          DataCell(Text(state.model.results!
                                              .first.location!.postcode!
                                              .toString())),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 50),
                                ElevatedButton(
                                  onPressed: () {
                                    bloc.add(GetUserEvent());
                                  },
                                  child: Icon(Icons.restart_alt_outlined),
                                )
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.green[100],
                            child: Column(
                              children: [
                                SizedBox(height: 50),
                                Container(
                                  height: 300,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow[100],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: DataTable(
                                    columns: [
                                      DataColumn(label: Text('name')),
                                      DataColumn(label: Text('value'))
                                    ],
                                    rows: [
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text('Email:'),
                                          ),
                                          DataCell(Text(state
                                              .model.results!.first.email
                                              .toString())),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text('Username:'),
                                          ),
                                          DataCell(Text(state.model.results!
                                              .first.login!.username
                                              .toString())),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text('phone'),
                                          ),
                                          DataCell(Text(state
                                              .model.results!.first.phone
                                              .toString())),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text('cell'),
                                          ),
                                          DataCell(Text(state
                                              .model.results!.first.cell
                                              .toString())),
                                        ],
                                      ),
                                      DataRow(
                                        cells: [
                                          DataCell(
                                            Text('registered'),
                                          ),
                                          DataCell(Text(state.model.results!
                                              .first.registered!.date
                                              .toString())),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 50),
                                ElevatedButton(
                                  onPressed: () {
                                    bloc.add(GetUserEvent());
                                  },
                                  child: Text('Поиск'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            } else if (state is UserLoading) {
              return Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.green,
                ),
              );
            } else if (state is UserError) {
              return Text(state.message);
            }
            return Text('Error');
          },
        ),
      ),
    );
  }
}
