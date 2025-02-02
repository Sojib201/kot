// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:kot/utils/styles.dart';
//
// import 'model/model.dart';
//
// class Homepage extends StatefulWidget {
//   const Homepage({super.key});
//
//   @override
//   State<Homepage> createState() => _HomepageState();
// }
//
// class _HomepageState extends State<Homepage> {
//   //late final OrderModel order;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Utils.primaryColor,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             children: [
//               Expanded(
//                 flex: 1,
//                 child: Row(
//                   children: [
//                     Expanded(
//                       flex: 7,
//                       child: Container(
//                         padding: EdgeInsets.all(12),
//                         decoration: BoxDecoration(
//                           color: Utils.secondaryColor,
//                           borderRadius: const BorderRadius.all(
//                             Radius.circular(14),
//                           ),
//                         ),
//                         child: Center(
//                           child: DropdownButton<String>(
//                             iconEnabledColor: Utils.primaryColor,
//                             iconSize: 45,
//                             hint: Text(
//                               'Kitchen-1',
//                               style: TextStyle(
//                                   fontSize: 32,
//                                   fontWeight: FontWeight.bold,
//                                   color: Utils.primaryColor),
//                             ),
//                             alignment: Alignment.centerRight,
//                             items: <String>['A', 'B', 'C', 'D']
//                                 .map((String value) {
//                               return DropdownMenuItem<String>(
//                                 value: value,
//                                 child: Text(value),
//                               );
//                             }).toList(),
//                             onChanged: (_) {},
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 12,
//                     ),
//                     Expanded(
//                       flex: 3,
//                       child: Container(
//                         padding: EdgeInsets.all(12),
//                         decoration: BoxDecoration(
//                           color: Utils.thirdcolor,
//                           borderRadius: const BorderRadius.all(
//                             Radius.circular(14),
//                           ),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Order in Queue: ',
//                               style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                   color: Utils.secondaryColor),
//                             ),
//                             Container(
//                               height: 48,
//                               width: 65,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(12),
//                                   color: Utils.secondaryColor,
//                                   boxShadow: [
//                                     BoxShadow(
//                                       blurRadius: 5,
//                                       color: Colors.black.withOpacity(0.4),
//                                       offset: Offset(0, 4),
//                                     ),
//                                   ]),
//                               child: Center(
//                                   child: Text('56', style: Utils.heading1)),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 12,
//                     ),
//                     Expanded(
//                       flex: 3,
//                       child: Container(
//                         padding: EdgeInsets.all(12),
//                         decoration: BoxDecoration(
//                           color: Utils.thirdcolor,
//                           borderRadius: const BorderRadius.all(
//                             Radius.circular(14),
//                           ),
//                         ),
//                         child: Row(
//                           //mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Total order delivered: ',
//                               style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                   color: Utils.secondaryColor),
//                             ),
//                             Expanded(
//                               child: Container(
//                                 height: 48,
//                                 width: 65,
//                                 decoration: BoxDecoration(
//                                     border: Border.all(
//                                         color: Utils.secondaryColor, width: 4),
//                                     borderRadius: BorderRadius.circular(12),
//                                     color: Utils.primaryColor,
//                                     boxShadow: [
//                                       BoxShadow(
//                                         blurRadius: 5,
//                                         color: Colors.black.withOpacity(0.4),
//                                         offset: Offset(0, 4),
//                                       ),
//                                     ]),
//                                 child: Center(
//                                     child: Text('38', style: Utils.heading2)),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Expanded(
//                 flex: 10,
//                 // child: Row(
//                 //   crossAxisAlignment: CrossAxisAlignment.start,
//                 //   children: [
//                 //     Container(
//                 //       height: 400,
//                 //       width: 300,
//                 //       decoration: BoxDecoration(
//                 //         border: Border.all(color: Utils.secondaryColor),
//                 //         color: Utils.primaryColor,
//                 //         borderRadius: BorderRadius.circular(14),
//                 //       ),
//                 //       child: Column(
//                 //         children: [
//                 //           Container(
//                 //             height: 200,
//                 //             width: 300,
//                 //             decoration: BoxDecoration(
//                 //               color: Utils.secondaryColor,
//                 //               border: Border.all(color: Utils.secondaryColor),
//                 //               borderRadius: BorderRadius.circular(14),
//                 //             ),
//                 //             child: Center(child: Text('1')),
//                 //           ),
//                 //           Container(
//                 //             width: 300,
//                 //             decoration: BoxDecoration(
//                 //               color: Utils.secondaryColor,
//                 //               border: Border.all(color: Utils.secondaryColor),
//                 //               borderRadius: BorderRadius.circular(14),
//                 //             ),
//                 //             child: Text('dfsdf'),
//                 //           ),
//                 //         ],
//                 //       ),
//                 //     ),
//                 //     SizedBox(width: 20,),
//                 //     Column(
//                 //       children: [
//                 //         Container(
//                 //           height: 400,
//                 //           width: 300,
//                 //           decoration: BoxDecoration(
//                 //             border: Border.all(color: Utils.secondaryColor),
//                 //             color: Utils.primaryColor,
//                 //             borderRadius: BorderRadius.circular(14),
//                 //           ),
//                 //           child: Column(
//                 //             children: [
//                 //               Container(
//                 //                 height: 200,
//                 //                 width: 300,
//                 //                 decoration: BoxDecoration(
//                 //                   color: Utils.secondaryColor,
//                 //                   border: Border.all(color: Utils.secondaryColor),
//                 //                   borderRadius: BorderRadius.circular(14),
//                 //                 ),
//                 //                 child: Center(child: Text('1')),
//                 //               ),
//                 //               Container(
//                 //                 width: 300,
//                 //                 decoration: BoxDecoration(
//                 //                   color: Utils.secondaryColor,
//                 //                   border: Border.all(color: Utils.secondaryColor),
//                 //                   borderRadius: BorderRadius.circular(14),
//                 //                 ),
//                 //                 child: Text('dfsdf'),
//                 //               ),
//                 //             ],
//                 //           ),
//                 //         ),
//                 //         SizedBox(height: 20,),
//                 //         Container(
//                 //           height: 400,
//                 //           width: 300,
//                 //           decoration: BoxDecoration(
//                 //             border: Border.all(color: Utils.secondaryColor),
//                 //             color: Utils.primaryColor,
//                 //             borderRadius: BorderRadius.circular(14),
//                 //           ),
//                 //           child: Column(
//                 //             children: [
//                 //               Container(
//                 //                 height: 200,
//                 //                 width: 300,
//                 //                 decoration: BoxDecoration(
//                 //                   color: Utils.secondaryColor,
//                 //                   border: Border.all(color: Utils.secondaryColor),
//                 //                   borderRadius: BorderRadius.circular(14),
//                 //                 ),
//                 //                 child: Center(child: Text('1')),
//                 //               ),
//                 //               Container(
//                 //                 width: 300,
//                 //                 decoration: BoxDecoration(
//                 //                   color: Utils.secondaryColor,
//                 //                   border: Border.all(color: Utils.secondaryColor),
//                 //                   borderRadius: BorderRadius.circular(14),
//                 //                 ),
//                 //                 child: Text('dfsdf'),
//                 //               ),
//                 //             ],
//                 //           ),
//                 //         ),
//                 //       ],
//                 //     ),
//                 //   ],
//                 // ),
//
//                 child: MasonryGridView.builder(
//                   gridDelegate:
//                       const SliverSimpleGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 5),
//                   itemCount: 15,
//                   scrollDirection: Axis.vertical,
//                   mainAxisSpacing: 4,
//                   crossAxisSpacing: 4,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         //height: 600,
//                         width: 300,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Utils.secondaryColor),
//                           color: Utils.primaryColor,
//                           //borderRadius: BorderRadius.circular(14),
//                         ),
//                         child: Column(
//                           children: [
//                             Container(
//                               height: 100,
//                               width: 300,
//                               decoration: BoxDecoration(
//                                 color: Utils.secondaryColor,
//                                 border: Border.all(color: Utils.secondaryColor),
//                                 //borderRadius: BorderRadius.circular(14),
//                               ),
//                               child: Column(
//                                 children: [
//                                   Text('Order Type: Dine In',
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold)),
//                                   Text('Order No:',
//                                       style: TextStyle(color: Colors.red)),
//                                   Text('Waiter: '),
//                                   Text('Table No: '),
//                                   Text('Time:',
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold)),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               width: 300,
//                               //height: 400,
//                               decoration: BoxDecoration(
//                                 color: Utils.primaryColor,
//                                 border: Border.all(color: Utils.secondaryColor),
//                                 //borderRadius: BorderRadius.circular(14),
//                               ),
//                               child: Text(index == 1
//                                   ? 'dfsdf'
//                                   : 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using , making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like'),
//                             ),
//                           ],
//                         ),
//
//                         // child: Column(
//                         //   crossAxisAlignment: CrossAxisAlignment.start,
//                         //   children: [
//                         //     Text('Order Type: Dine In',
//                         //         style: TextStyle(fontWeight: FontWeight.bold)),
//                         //     Text('Order No:',
//                         //         style: TextStyle(color: Colors.red)),
//                         //     Text('Waiter: '),
//                         //     Text('Table No: '),
//                         //     Text('Time:',
//                         //         style: TextStyle(fontWeight: FontWeight.bold)),
//                         //     Divider(),
//                         //     // ListView(
//                         //     //   shrinkWrap: true,
//                         //     //   physics: NeverScrollableScrollPhysics(),
//                         //     //   children: order.orderItems
//                         //     //       .map((item) => Padding(
//                         //     //     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                         //     //     child: Row(
//                         //     //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         //     //       children: [
//                         //     //         Expanded(child: Text(item.food.first.name)),
//                         //     //         Text('x${item.food.first.quantity}'),
//                         //     //       ],
//                         //     //     ),
//                         //     //   ))
//                         //     //       .toList(),
//                         //     // ),
//                         //     SizedBox(height: 8),
//                         //     ElevatedButton(
//                         //       onPressed: () {},
//                         //       child: Text('Start'),
//                         //       style: ElevatedButton.styleFrom(
//                         //         backgroundColor: Colors.red,
//                         //       ),
//                         //     ),
//                         //   ],
//                         // ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kot/utils/styles.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Utils.secondaryColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: Center(
                          child: DropdownButton<String>(
                            iconEnabledColor: Utils.primaryColor,
                            iconSize: 45,
                            hint: Text(
                              'Kitchen-1',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Utils.primaryColor),
                            ),
                            alignment: Alignment.centerRight,
                            items: <String>['A', 'B', 'C', 'D']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Utils.thirdcolor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Order in Queue: ',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Utils.secondaryColor),
                            ),
                            Container(
                              height: 48,
                              width: 65,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Utils.secondaryColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.black.withOpacity(0.4),
                                      offset: Offset(0, 4),
                                    ),
                                  ]),
                              child: Center(
                                  child: Text('56', style: Utils.heading1)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Utils.thirdcolor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Total order delivered: ',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Utils.secondaryColor),
                            ),
                            Expanded(
                              child: Container(
                                height: 48,
                                width: 65,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Utils.secondaryColor, width: 4),
                                    borderRadius: BorderRadius.circular(12),
                                    color: Utils.primaryColor,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5,
                                        color: Colors.black.withOpacity(0.4),
                                        offset: Offset(0, 4),
                                      ),
                                    ]),
                                child: Center(
                                    child: Text('38', style: Utils.heading2)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                flex: 10,
                child: MasonryGridView.builder(
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5),
                  itemCount: 25,
                  scrollDirection: Axis.vertical,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 5,
                              offset: Offset(0,4)
                            )
                          ]
                        ),
                        width: 300,
                        child: Column(
                          children: [
                            Container(
                              //height: 100,
                              width: 300,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8)),
                                border: Border.all(color: Utils.secondaryColor),
                                color: Utils.secondaryColor,
                              ),

                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Order Type: Dine In',
                                            style: Utils.heading1),
                                        Text('Time: 04:02',
                                            style: Utils.heading1),
                                      ],
                                    ),
                                    Text('Order No: #KOT123456', style: Utils.heading1),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Waiter: SJKYFY',
                                          style: Utils.heading1,
                                        ),
                                        Text(
                                          'Table No: 09',
                                          style: Utils.heading1,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 300,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8)),
                                border: Border.all(color: Utils.secondaryColor),
                                color: Utils.primaryColor,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex:7,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Utils.secondaryColor,
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Item Name',
                                              style: TextStyle(
                                                  color: Utils.primaryColor),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width:5,),
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Utils.secondaryColor,
                                            borderRadius:
                                            BorderRadius.circular(3),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Qty',
                                              style: TextStyle(
                                                  color: Utils.primaryColor),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(),
                                  SizedBox(height: 8),
                                  SizedBox(
                                    width: 220,
                                    height: 23,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          side: BorderSide(
                                              color: Utils.secondaryColor,
                                              width:
                                                  1), // Border color and width
                                        ),
                                        backgroundColor: Utils.primaryColor,
                                        //foregroundColor: Colors.white, // Text color
                                      ),
                                      child: Text('Start'),
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _buildOrderCard(int index) {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Container(
  //       width: 300,
  //       decoration: BoxDecoration(
  //         border: Border.all(color: Utils.secondaryColor),
  //         color: Utils.primaryColor,
  //       ),
  //       child: Column(
  //         children: [
  //           Container(
  //             //height: 100,
  //             width: 300,
  //             decoration: BoxDecoration(
  //               color: Utils.secondaryColor,
  //               border: Border.all(color: Utils.secondaryColor),
  //             ),
  //             child: Column(
  //               //mainAxisAlignment: MainAxisAlignment.center,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Text('Order Type: Dine In',
  //                     style: TextStyle(fontWeight: FontWeight.bold)),
  //                 Text('Order No:', style: TextStyle(color: Colors.red)),
  //                 Text('Waiter: '),
  //                 Text('Table No: '),
  //                 Text('Time:', style: TextStyle(fontWeight: FontWeight.bold)),
  //               ],
  //             ),
  //           ),
  //           Container(
  //             width: 300,
  //             padding: EdgeInsets.all(8),
  //             decoration: BoxDecoration(
  //               color: Utils.primaryColor,
  //               border: Border.all(color: Utils.secondaryColor),
  //             ),
  //             child: Text(
  //               index == 1
  //                   ? 'Special order details here'
  //                   : 'It is a long established fact that a reader will be distracted by the readable content.',
  //               textAlign: TextAlign.justify,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
