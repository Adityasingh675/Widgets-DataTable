import 'package:flutter/material.dart';

class DataTableExmp extends StatefulWidget {
  @override
  _DataTableExmpState createState() => _DataTableExmpState();
}

class _DataTableExmpState extends State<DataTableExmp> {
  Widget bodyData() {
    return DataTable(
      onSelectAll: (bool) {},
      sortColumnIndex: 1,
      sortAscending: true,
      columns: <DataColumn>[
        DataColumn(
          label: Text("First Name"),
          numeric: false,
          onSort: (index, bool) {
            print("$index $bool");
            setState(() {
              names.sort((a, b) => a.firstName.compareTo(b.firstName));
            });
          },
          tooltip: "To display first name",
        ),
        DataColumn(
          label: Text("Last Name"),
          numeric: false,
          onSort: (index, bool) {
            print("$index $bool");
            setState(() {
              names.sort((a, b) => a.lastName.compareTo(b.lastName));
            });
          },
          tooltip: "To display last name",
        ),
      ],
      rows: names
          .map(
            (name) => DataRow(
              cells: [
                DataCell(
                  Text(name.firstName),
                  showEditIcon: false,
                  placeholder: false,
                ),
                DataCell(
                  Text(name.lastName),
                  showEditIcon: false,
                  placeholder: false,
                ),
              ],
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datatable Demo.'),
      ),
      body: Container(
        child: bodyData(),
      ),
    );
  }
}

class Name {
  String firstName;
  String lastName;

  Name({this.firstName, this.lastName});
}

List<Name> names = [
  Name(firstName: "Aditya", lastName: "Singh"),
  Name(firstName: "Neha", lastName: "Singh"),
  Name(firstName: "Tamal", lastName: "Singh"),
  Name(firstName: "Rajashree", lastName: "Mohanty"),
];

//// use PaginatedDataTable for more modularity.
