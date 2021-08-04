// import 'package:flutter/material.dart';

// class ThirdContainer extends StatelessWidget {
//   const ThirdContainer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green[100],
//       child: Column(
//         children: [
//           SizedBox(height: 50),
//           Container(
//             height: 300,
//             width: 350,
//             decoration: BoxDecoration(
//               color: Colors.yellow[100],
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: DataTable(
//               columns: [
//                 DataColumn(label: Text('name')),
//                 DataColumn(label: Text('value'))
//               ],
//               rows: [
//                 DataRow(
//                   cells: [
//                     DataCell(
//                       Text('Email:'),
//                     ),
//                     DataCell(Text(state.model.results!.first.email.toString())),
//                   ],
//                 ),
//                 DataRow(
//                   cells: [
//                     DataCell(
//                       Text('Username:'),
//                     ),
//                     DataCell(Text(
//                         state.model.results!.first.login!.username.toString())),
//                   ],
//                 ),
//                 DataRow(
//                   cells: [
//                     DataCell(
//                       Text('phone'),
//                     ),
//                     DataCell(Text(state.model.results!.first.phone.toString())),
//                   ],
//                 ),
//                 DataRow(
//                   cells: [
//                     DataCell(
//                       Text('cell'),
//                     ),
//                     DataCell(Text(state.model.results!.first.cell.toString())),
//                   ],
//                 ),
//                 DataRow(
//                   cells: [
//                     DataCell(
//                       Text('registered'),
//                     ),
//                     DataCell(Text(state.model.results!.first.registered!.date
//                         .toString())),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 50),
//           ElevatedButton(
//             onPressed: () {
//               bloc.add(GetUserEvent());
//             },
//             child: Text('Поиск'),
//           )
//         ],
//       ),
//     );
//   }
// }
