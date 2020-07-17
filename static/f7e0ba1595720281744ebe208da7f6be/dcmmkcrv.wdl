version 1.0

task Dcmmkcrv {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? _curvevr_umber
    Boolean? _group_integer
    Boolean? _axis_string
    String dcm_file_in
    String curve_data_in
    String dcm_file_out
  }
  command <<<
    dcmmkcrv \
      ~{dcm_file_in} \
      ~{curve_data_in} \
      ~{dcm_file_out} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-c" false="" _curvevr_umber} \
      ~{true="-g" false="" _group_integer} \
      ~{true="-a" false="" _axis_string}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet        quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose      verbose mode, print processing details"
    _debug_debug: "--debug        debug mode, print debug information"
    ll: "--log-level    [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config   [f]ilename: string use config file f for the logger"
    _curvevr_umber: "--curve-vr     [n]umber: integer 0..2 (default: 0) select VR with which the Curve Data element is written 0=VR according to --data-vr, 1=OB, 2=OW"
    _group_integer: "--group        [n]umber: integer 0..15 (default: 0) select repeating group: 0=0x5000, 1=0x5002 etc."
    _axis_string: "--axis         x: string, y: string set Axis Units to x\y (default: absent)"
    dcm_file_in: "DICOM input image file"
    curve_data_in: "curve data input file (text)"
    dcm_file_out: "DICOM output filename"
  }
}