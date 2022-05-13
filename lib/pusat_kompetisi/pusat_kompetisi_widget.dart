import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PusatKompetisiWidget extends StatefulWidget {
  const PusatKompetisiWidget({Key key}) : super(key: key);

  @override
  _PusatKompetisiWidgetState createState() => _PusatKompetisiWidgetState();
}

class _PusatKompetisiWidgetState extends State<PusatKompetisiWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: FutureBuilder<ApiCallResponse>(
            future: NamaSiswaCall.call(),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: SpinKitChasingDots(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 50,
                    ),
                  ),
                );
              }
              final columnNamaSiswaResponse = snapshot.data;
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                    child: Container(
                      width: 350,
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            offset: Offset(1, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 330,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.86, -0.02),
                                  child: Image.asset(
                                    'assets/images/Pngtreefirst_prize_honor_trophy_5422273_1.png',
                                    width: 57,
                                    height: 57,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.81, -0.83),
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      '',
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.46, 0.29),
                                  child: FaIcon(
                                    FontAwesomeIcons.solidStar,
                                    color: Color(0xFFFF9900),
                                    size: 15,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.87, 0.83),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Deskripsi',
                                    options: FFButtonOptions(
                                      width: 152,
                                      height: 38,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Colors.white,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.23, 0.27),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 2, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: getJsonField(
                                        (columnNamaSiswaResponse?.jsonBody ??
                                            ''),
                                        r'''$..data[0].hadiahPoint''',
                                      ).toString(),
                                      options: FFButtonOptions(
                                        width: 60,
                                        height: 20,
                                        color: Color(0xFFFF9900),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.white,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.9, 0.83),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        50, 0, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await launchURL(getJsonField(
                                          (columnNamaSiswaResponse?.jsonBody ??
                                              ''),
                                          r'''$..data[0].tombolRegistrasi''',
                                        ).toString());
                                      },
                                      text: 'Register',
                                      options: FFButtonOptions(
                                        width: 152,
                                        height: 38,
                                        color: Color(0xFFE8F1FC),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.31, -0.83),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  70, 5, 0, 0),
                                          child: Text(
                                            getJsonField(
                                              (columnNamaSiswaResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$..data[0].penyelenggaraKompetisi''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -0.34),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.1, -0.34),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  85, 0, 5, 0),
                                          child: Text(
                                            getJsonField(
                                              (columnNamaSiswaResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$..data[0].namaKompetisi''',
                                            ).toString().maybeHandleOverflow(
                                                  maxChars: 24,
                                                  replacement: '…',
                                                ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.37, 0),
                                  child: Text(
                                    'Reward:',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.8, 0.25),
                                  child: Text(
                                    'GRATIS',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Roboto',
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                    child: Container(
                      width: 350,
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            offset: Offset(1, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 330,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.86, -0.02),
                                  child: Image.asset(
                                    'assets/images/Pngtreefirst_prize_honor_trophy_5422273_1.png',
                                    width: 57,
                                    height: 57,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.81, -0.83),
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      '',
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.46, 0.29),
                                  child: FaIcon(
                                    FontAwesomeIcons.solidStar,
                                    color: Color(0xFFFF9900),
                                    size: 15,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.87, 0.83),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Deskripsi',
                                    options: FFButtonOptions(
                                      width: 152,
                                      height: 38,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Colors.white,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.23, 0.27),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 2, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: getJsonField(
                                        (columnNamaSiswaResponse?.jsonBody ??
                                            ''),
                                        r'''$..data[1].hadiahPoint''',
                                      ).toString(),
                                      options: FFButtonOptions(
                                        width: 60,
                                        height: 20,
                                        color: Color(0xFFFF9900),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.white,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.9, 0.83),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        50, 0, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await launchURL(getJsonField(
                                          (columnNamaSiswaResponse?.jsonBody ??
                                              ''),
                                          r'''$..data[0].tombolRegistrasi''',
                                        ).toString());
                                      },
                                      text: 'Register',
                                      options: FFButtonOptions(
                                        width: 152,
                                        height: 38,
                                        color: Color(0xFFE8F1FC),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.31, -0.83),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  70, 5, 0, 0),
                                          child: Text(
                                            getJsonField(
                                              (columnNamaSiswaResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$..data[1].penyelenggaraKompetisi''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -0.34),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.1, -0.34),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  85, 0, 5, 0),
                                          child: Text(
                                            getJsonField(
                                              (columnNamaSiswaResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$..data[1].namaKompetisi''',
                                            ).toString().maybeHandleOverflow(
                                                  maxChars: 24,
                                                  replacement: '…',
                                                ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.37, 0),
                                  child: Text(
                                    'Reward:',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.8, 0.25),
                                  child: Text(
                                    'GRATIS',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Roboto',
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                    child: Container(
                      width: 350,
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            offset: Offset(1, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 330,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.86, -0.02),
                                  child: Image.asset(
                                    'assets/images/Pngtreefirst_prize_honor_trophy_5422273_1.png',
                                    width: 57,
                                    height: 57,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.81, -0.83),
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      '',
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.46, 0.29),
                                  child: FaIcon(
                                    FontAwesomeIcons.solidStar,
                                    color: Color(0xFFFF9900),
                                    size: 15,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.87, 0.83),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Deskripsi',
                                    options: FFButtonOptions(
                                      width: 152,
                                      height: 38,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Colors.white,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.23, 0.27),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 2, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: getJsonField(
                                        (columnNamaSiswaResponse?.jsonBody ??
                                            ''),
                                        r'''$..data[2].hadiahPoint''',
                                      ).toString(),
                                      options: FFButtonOptions(
                                        width: 60,
                                        height: 20,
                                        color: Color(0xFFFF9900),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.white,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.9, 0.83),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        50, 0, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await launchURL(getJsonField(
                                          (columnNamaSiswaResponse?.jsonBody ??
                                              ''),
                                          r'''$..data[2].tombolRegistrasi''',
                                        ).toString());
                                      },
                                      text: 'Register',
                                      options: FFButtonOptions(
                                        width: 152,
                                        height: 38,
                                        color: Color(0xFFE8F1FC),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.31, -0.83),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  70, 5, 0, 0),
                                          child: Text(
                                            getJsonField(
                                              (columnNamaSiswaResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$..data[2].penyelenggaraKompetisi''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -0.34),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.1, -0.34),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  85, 0, 5, 0),
                                          child: Text(
                                            getJsonField(
                                              (columnNamaSiswaResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$..data[2].namaKompetisi''',
                                            ).toString().maybeHandleOverflow(
                                                  maxChars: 24,
                                                  replacement: '…',
                                                ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.37, 0),
                                  child: Text(
                                    'Reward:',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.8, 0.25),
                                  child: Text(
                                    'GRATIS',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Roboto',
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                    child: Container(
                      width: 350,
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            offset: Offset(1, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 330,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.86, -0.02),
                                  child: Image.asset(
                                    'assets/images/Pngtreefirst_prize_honor_trophy_5422273_1.png',
                                    width: 57,
                                    height: 57,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.81, -0.83),
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      '',
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.46, 0.29),
                                  child: FaIcon(
                                    FontAwesomeIcons.solidStar,
                                    color: Color(0xFFFF9900),
                                    size: 15,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.87, 0.83),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Deskripsi',
                                    options: FFButtonOptions(
                                      width: 152,
                                      height: 38,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Colors.white,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.23, 0.27),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 2, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: getJsonField(
                                        (columnNamaSiswaResponse?.jsonBody ??
                                            ''),
                                        r'''$..data[3].hadiahPoint''',
                                      ).toString(),
                                      options: FFButtonOptions(
                                        width: 60,
                                        height: 20,
                                        color: Color(0xFFFF9900),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.white,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.9, 0.83),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        50, 0, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await launchURL(getJsonField(
                                          (columnNamaSiswaResponse?.jsonBody ??
                                              ''),
                                          r'''$..data[3].tombolRegistrasi''',
                                        ).toString());
                                      },
                                      text: 'Register',
                                      options: FFButtonOptions(
                                        width: 152,
                                        height: 38,
                                        color: Color(0xFFE8F1FC),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.31, -0.83),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  70, 5, 0, 0),
                                          child: Text(
                                            getJsonField(
                                              (columnNamaSiswaResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$..data[3].penyelenggaraKompetisi''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -0.34),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.1, -0.34),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  85, 0, 5, 0),
                                          child: Text(
                                            getJsonField(
                                              (columnNamaSiswaResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$..data[3].namaKompetisi''',
                                            ).toString().maybeHandleOverflow(
                                                  maxChars: 24,
                                                  replacement: '…',
                                                ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.37, 0),
                                  child: Text(
                                    'Reward:',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.8, 0.25),
                                  child: Text(
                                    'GRATIS',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Roboto',
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
