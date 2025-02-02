// ignore_for_file: file_names

import 'package:hive_flutter/adapters.dart';
import 'package:uuid/uuid.dart';

@HiveType(typeId: 20)
class OrderHiveModel extends HiveObject {
  OrderHiveModel(
      {this.rewardItem,
        this.table,
        this.id,
        required this.customer,
        required this.orderItems,
        this.tips,
        required this.orderStatus,
        required this.orderType,
        this.discardReason,
        required this.numberOfGuests,
        this.startTime,
        this.endTime,
        this.startDate,
        this.endDate,
        required this.orderTime,
        required this.orderDate,
        required this.totalAmount,
        required this.subTotal,
        this.totalTips,
        required this.totalPaymentAmount,
        this.discountType,
        this.discountAmount,
        this.estimatedTime,
        this.tax,
        required this.payment,
        this.sl,
        this.dueAmount,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.appliedPromo,
        this.restId,
        this.createdBy,
        this.updatedBy,
        this.discounts,
        this.flashDiscount,
        this.orderSource,
        this.refund,
        this.itemWisePayment});

  @HiveField(0)
  List? appliedPromo;
  @HiveField(1)
  List? table;
  @HiveField(2)
  String? id;
  @HiveField(3)
  Map customer;
  @HiveField(4)
  List orderItems;
  @HiveField(5)
  List? tips;
  @HiveField(6)
  String orderStatus;
  @HiveField(7)
  String orderType;
  @HiveField(8)
  String? discardReason;
  @HiveField(9)
  DateTime orderTime;
  @HiveField(10)
  DateTime orderDate;
  @HiveField(11)
  num numberOfGuests;
  @HiveField(12)
  DateTime? startTime;
  @HiveField(13)
  DateTime? endTime;
  @HiveField(14)
  DateTime? startDate;
  @HiveField(15)
  DateTime? endDate;
  @HiveField(16)
  num totalAmount;
  @HiveField(17)
  num subTotal;
  @HiveField(18)
  num? totalTips;
  @HiveField(19)
  num totalPaymentAmount;
  @HiveField(20)
  String? discountType;
  @HiveField(21)
  num? discountAmount;
  @HiveField(22)
  num? estimatedTime;
  @HiveField(23)
  num? tax;
  @HiveField(24)
  List? payment;
  @HiveField(25)
  num? dueAmount = 0.0;
  @HiveField(26)
  int? sl;
  @HiveField(27)
  DateTime? createdAt;
  @HiveField(28)
  DateTime? updatedAt;
  @HiveField(29)
  int? v; // v is using for detecting the accepted order by epos app by which we can identify which order is accepted by epos and remove it from the notification list of epos app.
  @HiveField(30)
  List? rewardItem;
  @HiveField(31)
  String? restId;
  @HiveField(32)
  String? createdBy;
  @HiveField(33)
  String? updatedBy;
  @HiveField(34)
  Map? discounts;
  @HiveField(35)
  num? flashDiscount;
  @HiveField(36)
  String? orderSource;
  @HiveField(37)
  Map? refund;
  @HiveField(38)
  Map<String, dynamic>? itemWisePayment;

  factory OrderHiveModel.buildEmpty() => OrderHiveModel(
      restId: '',
      appliedPromo: [],
      rewardItem: [
        {
          "_id": '',
          "name": '',
          "desc": '',
        }
      ],
      sl: 0,
      table: [
        {"_id": '', "name": "", "capacity": 0, "status": 1, "area": "", "createdBy": "", "updatedBy": "", "restId": "", "createdAt": "", "updatedAt": "", "__v": 0}
      ],
      customer: {
        // "_id": "",
        // "name": "",
        // "email": "",
        // "phone": "",
        // "address": "",
        // "createdAt": "",
        // "updatedAt": "",
        // "createdBy": "",
        // "updatedBy": "",
        // "restId": "",
        // "__v": 0
      },
      id: const Uuid().v1(),
      orderItems: [
        {
          "_id": const Uuid().v1(),
          "foodId": [],
          "food": [
            {
              "_id": const Uuid().v1(),
              "name": "",
              "portions": [
                {"_id": const Uuid().v1(), "portionName": "", "portionPrice": 0}
              ],
              "options": [
                {
                  "_id": const Uuid().v1(),
                  "optionName": "",
                  "optionVariant": [
                    {"_id": const Uuid().v1(), "variantName": "", "variantPrice": 0}
                  ]
                }
              ],
              "extras": [
                {"_id": const Uuid().v1(), "extraName": "", "extraPrice": 0, "extraQuantity": 0}
              ],
              "bonusItem": [
                {
                  "name": '',
                }
              ],
              "categories": [
                {
                  "_id": '',
                  "name": '',
                  "createdBy": '',
                  "updatedBy": '',
                  "restId": '',
                  "createdAt": '',
                  "updatedAt": '',
                  "__v": 0,
                  'sl': 0,
                }
              ],
              "comment": "",
              "quantity": 0,
              "price": 0,
              "status": true
            }
          ]
        }
      ],
      orderStatus: '',
      orderType: '',
      discardReason: '',
      orderTime: DateTime.now(),
      orderDate: DateTime.now(),
      startTime: DateTime.now(),
      endTime: DateTime.now(),
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      tips: [
        {
          "_id": const Uuid().v1(),
          "tip": 0,
          "ref": '',
        },
      ],
      estimatedTime: 0,
      numberOfGuests: 0,
      discountType: '',
      discountAmount: 0,
      payment: [
        {
          "_id": const Uuid().v1(),
          "cashFixAmount": 0,
          "changeAmount": 0,
          "cashAmount": 0,
          // "cardAmount": 0,
          "paymentType": "",
          "paymentTypeAmount": 0,
          "paymentStatus": '',
          "paymentAmount": 0,
          "paymentDate": DateTime.now(),
          "paymentTime": DateTime.now(),
        }
      ],
      dueAmount: 0,
      tax: 0,
      totalAmount: 0,
      subTotal: 0,
      totalTips: 0,
      totalPaymentAmount: 0,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      createdBy: '',
      updatedBy: '',
      v: 0,
      discounts: {},
      flashDiscount: 0.00,
      orderSource: "Restaurant",
      refund: {
        "refundReason": "",
        "refundPaymentType": "",
        "refundPaymentTypeAmount": 0.00,
        "refundCashAmount": 0.00,
        "refundChangeAmount": 0.00,
        "totalRefundAmount": 0.00,
        "refundDate": DateTime.now(),
      },
      itemWisePayment: {});

  Map<String, dynamic> toJson() => {
    "restId": restId,
    "appliedPromo": List<dynamic>.from(appliedPromo!.map((x) => x)),
    "sl": sl,
    "rewardItem": List<dynamic>.from(rewardItem!.map((x) => x)),
    "table": List<dynamic>.from(table!.map((x) => x)),
    "_id": id,
    "customer": customer,
    "orderItems": List<dynamic>.from(orderItems.map((x) => x)),
    "tips": List<dynamic>.from(tips!.map((x) => x)),
    "orderStatus": orderStatus,
    "orderType": orderType,
    "startTime": startTime!.toIso8601String(),
    "endTime": endTime!.toIso8601String(),
    "startDate": startDate!.toIso8601String(),
    "endDate": endDate!.toIso8601String(),
    "discardReason": discardReason,
    "orderTime": orderTime.toIso8601String(),
    "orderDate": orderDate.toIso8601String(),
    "totalAmount": totalAmount,
    "subTotal": subTotal,
    "numberOfGuests": numberOfGuests,
    "totalTips": totalTips,
    "totalPaymentAmount": totalPaymentAmount,
    "discountType": discountType,
    "discountAmount": discountAmount,
    "estimatedTime": estimatedTime,
    "tax": tax,
    "payment": List<dynamic>.from(payment!.map((x) => x)),
    "dueAmount": dueAmount,
    "createdAt": createdAt!.toIso8601String(),
    "updatedAt": updatedAt!.toIso8601String(),
    "createdBy": createdBy,
    "updatedBy": updatedBy,
    "__v": v,
    "discounts": discounts,
    "flashDiscount": flashDiscount,
    "orderSource": orderSource,
    "refund": refund,
    "itemWisePayment": itemWisePayment
  };

  factory OrderHiveModel.fromJson(Map<String, dynamic> json) => OrderHiveModel(
    restId: json["restId"],
    appliedPromo: List<dynamic>.from(json["appliedPromo"].map((x) => x)),
    sl: json["sl"],
    rewardItem: List<dynamic>.from(json["rewardItem"].map((x) => x)),
    table: List<dynamic>.from(json["table"].map((x) => x)),
    id: json["_id"],
    customer: json["customer"],
    orderItems: List<dynamic>.from(json["orderItems"].map((x) => x)),
    tips: List<dynamic>.from(json["tips"].map((x) => x)),
    orderStatus: json["orderStatus"],
    orderType: json["orderType"],
    startTime: DateTime.parse(json["startTime"]),
    endTime: DateTime.parse(json["endTime"]),
    startDate: DateTime.parse(json["startDate"]),
    endDate: DateTime.parse(json["endDate"]),
    discardReason: json["discardReason"],
    orderTime: DateTime.parse(json["orderTime"]),
    orderDate: DateTime.parse(json["orderDate"]),
    totalAmount: json["totalAmount"].toDouble(),
    subTotal: json["subTotal"],
    numberOfGuests: json["numberOfGuests"],
    totalTips: json["totalTips"],
    totalPaymentAmount: json["totalPaymentAmount"].toDouble(),
    discountType: json["discountType"],
    discountAmount: json["discountAmount"],
    estimatedTime: json["estimatedTime"],
    tax: json["tax"].toDouble(),
    payment: List<dynamic>.from(json["payment"].map((x) => x)),
    dueAmount: json["dueAmount"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    createdBy: json["createdBy"],
    updatedBy: json["updatedBy"],
    v: json["__v"],
    discounts: json["discounts"],
    flashDiscount: json["flashDiscount"],
    refund: json["refund"],
    orderSource: json["orderSource"],
    itemWisePayment: json["itemWisePayment"],
  );
}
