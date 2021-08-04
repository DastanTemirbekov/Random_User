// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:random_user/bloc/user.repository.dart';
// import 'package:random_user/bloc/user_bloc.dart';

// class FirstContainer extends StatelessWidget {
//   FirstContainer({Key? key}) : super(key: key);
//   final bloc = UserBloc(UserRepository());
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.brown[100],
//       child: Column(
//         children: [
//           SizedBox(height: 50),
//           Container(
//             height: 300,
//             width: 350,
//             decoration: BoxDecoration(
//                 color: Colors.yellow[100],
//                 borderRadius: BorderRadius.circular(20)),
//             child: BlocBuilder<UserBloc, UserState>(
//               bloc: bloc,
//               builder: (context, state) {
//                 if (state is UserLoading){}
//                 else if(state is UserLoaded){               return DataTable(
//                   columns: [
//                     DataColumn(label: Text('Name')),
//                     DataColumn(label: Text('Value'))
//                   ],
//                   rows: [
//                     DataRow(
//                       cells: [
//                         DataCell(
//                           Text('First name'),
//                         ),
//                         DataCell(Text(
//                             state.model.results!.first.name!.first.toString())),
//                       ],
//                     ),
//                     DataRow(
//                       cells: [
//                         DataCell(
//                           Text('Last name'),
//                         ),
//                         DataCell(Text(
//                             state.model.results!.first.name!.last.toString())),
//                       ],
//                     ),
//                     DataRow(
//                       cells: [
//                         DataCell(
//                           Text('Gender'),
//                         ),
//                         DataCell(
//                             Text(state.model.results!.first.gender.toString())),
//                       ],
//                     ),
//                     DataRow(
//                       cells: [
//                         DataCell(Text('Date of Birth')),
//                         DataCell(Text(
//                             state.model.results!.first.dob!.date.toString())),
//                       ],
//                     ),
//                     DataRow(
//                       cells: [
//                         DataCell(Text('Age')),
//                         DataCell(Text(
//                             state.model.results!.first.dob!.age.toString())),
//                       ],
//                     ),
//                   ],
//                 );}
//                 else if (state is UserError){
//                   return Text(state.message);
//                 }
//                 return Text('Error');

//               },
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
