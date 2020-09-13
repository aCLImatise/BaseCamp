version 1.0

task Dcmmkcrv {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _poly_create
    Boolean? _curvevr_umber
    Boolean? _group_umber
    Boolean? _label_label
    Boolean? _axis_string
    String dcm_file_in
    String curve_data_in
    String dcm_file_out
    String set_curve_description
  }
  command <<<
    dcmmkcrv \
      ~{dcm_file_in} \
      ~{curve_data_in} \
      ~{dcm_file_out} \
      ~{set_curve_description} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_poly_create) then "-r" else ""} \
      ~{if (_curvevr_umber) then "-c" else ""} \
      ~{if (_group_umber) then "-g" else ""} \
      ~{if (_label_label) then "-l" else ""} \
      ~{if (_axis_string) then "-a" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet        quiet mode, print no warnings and errors"
    _verbose_details: "--verbose      verbose mode, print processing details"
    _debug_information: "--debug        debug mode, print debug information"
    ll: "--log-level    [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config   [f]ilename: string\\nuse config file f for the logger"
    _poly_create: "--poly         create as POLY curve (default)"
    _curvevr_umber: "--curve-vr     [n]umber: integer 0..2 (default: 0)\\nselect VR with which the Curve Data element is written\\n0=VR according to --data-vr, 1=OB, 2=OW"
    _group_umber: "--group        [n]umber: integer 0..15 (default: 0)\\nselect repeating group: 0=0x5000, 1=0x5002 etc."
    _label_label: "--label        s: string\\nset Curve Label to s (default: absent)"
    _axis_string: "--axis         x: string, y: string\\nset Axis Units to x\\y (default: absent)\\n"
    dcm_file_in: "DICOM input image file"
    curve_data_in: "curve data input file (text)"
    dcm_file_out: "DICOM output filename"
    set_curve_description: "set Curve Description to s (default: absent)"
  }
  output {
    File out_stdout = stdout()
  }
}