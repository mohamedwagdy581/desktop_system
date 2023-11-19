import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import 'employee_details/employee_details_screen.dart';

class AllEmployees extends StatelessWidget {
  const AllEmployees({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employees'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          scrollDirection: Axis.vertical,
          itemCount: 40,
          itemBuilder: (BuildContext context, int index) => InkWell(
            splashColor: Colors.red,
            focusColor: Colors.red,
            hoverColor: Colors.amber,
            highlightColor: Colors.green,
            onTap: () async {
              navigateTo(context, const EmployeeDetailsScreen());
            },
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              //color: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://picsum.photos/seed/754/600',
                      width: double.maxFinite,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  customCardDetails(title: 'Name: ', employeeTitle: 'Mohamed Wagdi'),
                  customCardDetails(title: 'Nationality: ', employeeTitle: 'Egyptian'),
                  customCardDetails(title: 'Job: ', employeeTitle: 'Data Entry'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget customCardDetails({required String title, employeeTitle}) => Padding(
  padding:
  const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
  child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
      Text(
        employeeTitle,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
);

