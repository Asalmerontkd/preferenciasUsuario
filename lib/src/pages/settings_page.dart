import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _colorSecundario = false;
  int _genero = 1;
  String _nombre = 'Pedro';

  TextEditingController _textController;

  @override
  void initState() { 
    super.initState();
    _textController = new TextEditingController(
      text: _nombre
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      body: ListView(
        children: <Widget> [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Settings', style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),),
          ),
          Divider(),
          SwitchListTile(
            value: _colorSecundario, 
            title: Text('Color Secundario'),
            onChanged: (value){
              setState(() {
                _colorSecundario = value;
              });
            }
          ),
          RadioListTile(
            value: 1, 
            groupValue: _genero, 
            title: Text('Masculino'),
            onChanged: (value){
              setState(() {
                _genero = value;
              });
            }
          ),
          RadioListTile(
            value: 2, 
            groupValue: _genero, 
            title: Text('Femenino'),
            onChanged: (value){
              setState(() {
                _genero = value;
              });
            }
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de la persona usando el telefono'
              ),
              onChanged: (value){},
            ),
          )
        ],
      ) ,
      drawer: MenuWidget(),
    );
  }
}