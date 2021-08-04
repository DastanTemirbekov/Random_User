// import 'package:flutter/material.dart';

// class SecondContainer extends StatelessWidget {
//   const SecondContainer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue[100],
//       child: Column(
//         children: [
//           SizedBox(height: 50),
//           Container(
//             height: 300,
//             width: 350,
//             decoration: BoxDecoration(
//                 color: Colors.yellow[100],
//                 borderRadius: BorderRadius.circular(20)),
//             child: DataTable(
//               columns: [
//                 DataColumn(label: Text('name')),
//                 DataColumn(label: Text('value'))
//               ],
//               rows: [
//                 DataRow(
//                   cells: [
//                     DataCell(
//                       Text('country:'),
//                     ),
//                     DataCell(Text(state.model.results!.first.location!.country!
//                         .toString())),
//                   ],
//                 ),
//                 DataRow(
//                   cells: [
//                     DataCell(
//                       Text('state:'),
//                     ),
//                     DataCell(Text(
//                         state.model.results!.first.location!.state.toString())),
//                   ],
//                 ),
//                 DataRow(
//                   cells: [
//                     DataCell(
//                       Text('city:'),
//                     ),
//                     DataCell(Text(
//                         state.model.results!.first.location!.city!.toString())),
//                   ],
//                 ),
//                 DataRow(
//                   cells: [
//                     DataCell(
//                       Text('street:'),
//                     ),
//                     DataCell(Text(state
//                         .model.results!.first.location!.street!.name
//                         .toString())),
//                   ],
//                 ),
//                 DataRow(
//                   cells: [
//                     DataCell(
//                       Text('postcode:'),
//                     ),
//                     DataCell(Text(state.model.results!.first.location!.postcode!
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
//             child: Icon(Icons.restart_alt_outlined),
//           )
//         ],
//       ),
//     );
//   }
// }
