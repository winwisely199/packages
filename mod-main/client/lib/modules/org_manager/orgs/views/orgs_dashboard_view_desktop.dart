import 'package:flutter/material.dart';
import 'package:mod_main/modules/org_manager/orgs/widgets/data_pane.dart';
import 'package:mod_main/modules/org_manager/orgs/widgets/filter_pane.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OrgDashboardDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        return Row(
          children: <Widget>[
            FilterPane(sizingInfo : sizingInfo),
            SizedBox(width: 16),
            Expanded(child: DataPane(sizingInfo : sizingInfo)),
          ],
        );
      },
    );
  }

  

}
