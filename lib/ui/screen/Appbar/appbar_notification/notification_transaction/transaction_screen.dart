import 'package:aba/ui/controller/notification_controller.dart';
import 'package:aba/ui/screen/Appbar/appbar_notification/notification_transaction/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionScreen extends StatelessWidget {
  final NotificationController notificationController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: ListView.builder(
          itemCount: notificationController.listTransactionItemModel.length,
          itemBuilder: (BuildContext context, int index) {
            return TransactionItem(
              transactionIteamModel:
                  notificationController.listTransactionItemModel[index],
            );
          },
        ),
      ),
    );
  }
}
