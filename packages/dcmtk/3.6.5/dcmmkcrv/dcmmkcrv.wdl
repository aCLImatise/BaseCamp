version 1.0

task Dcmmkcrv {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? poly
    Boolean? curve_vr
    Boolean? group
    Boolean? label
    Boolean? axis
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
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (poly) then "--poly" else ""} \
      ~{if (curve_vr) then "--curve-vr" else ""} \
      ~{if (group) then "--group" else ""} \
      ~{if (label) then "--label" else ""} \
      ~{if (axis) then "--axis" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0"
  }
  parameter_meta {
    arguments: "print expanded command line arguments"
    quiet: "quiet mode, print no warnings and errors"
    verbose: "verbose mode, print processing details"
    debug: "debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    poly: "create as POLY curve (default)"
    curve_vr: "[n]umber: integer 0..2 (default: 0)\\nselect VR with which the Curve Data element is written\\n0=VR according to --data-vr, 1=OB, 2=OW"
    group: "[n]umber: integer 0..15 (default: 0)\\nselect repeating group: 0=0x5000, 1=0x5002 etc."
    label: "s: string\\nset Curve Label to s (default: absent)"
    axis: "x: string, y: string\\nset Axis Units to x\\y (default: absent)\\n"
    dcm_file_in: "DICOM input image file"
    curve_data_in: "curve data input file (text)"
    dcm_file_out: "DICOM output filename"
    set_curve_description: "set Curve Description to s (default: absent)"
  }
  output {
    File out_stdout = stdout()
  }
}