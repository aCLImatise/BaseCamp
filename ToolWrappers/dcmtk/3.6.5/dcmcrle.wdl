version 1.0

task Dcmcrle {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? read_dataset
    Boolean? _readxferauto_use
    Boolean? read_xfer_detect
    Boolean? read_xfer_little
    Boolean? read_xfer_big
    Boolean? read_xfer_implicit
    Boolean? offset_table_empty
    Boolean? disable_new_vr
    Boolean? group_length_remove
    Boolean? length_undefined
    Boolean? _paddingretain_change
    Boolean? padding_off
    String dcm_file_in
    String dcm_file_out
  }
  command <<<
    dcmcrle \
      ~{dcm_file_in} \
      ~{dcm_file_out} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (read_dataset) then "--read-dataset" else ""} \
      ~{if (_readxferauto_use) then "-t" else ""} \
      ~{if (read_xfer_detect) then "--read-xfer-detect" else ""} \
      ~{if (read_xfer_little) then "--read-xfer-little" else ""} \
      ~{if (read_xfer_big) then "--read-xfer-big" else ""} \
      ~{if (read_xfer_implicit) then "--read-xfer-implicit" else ""} \
      ~{if (offset_table_empty) then "--offset-table-empty" else ""} \
      ~{if (disable_new_vr) then "--disable-new-vr" else ""} \
      ~{if (group_length_remove) then "--group-length-remove" else ""} \
      ~{if (length_undefined) then "--length-undefined" else ""} \
      ~{if (_paddingretain_change) then "-p" else ""} \
      ~{if (padding_off) then "--padding-off" else ""}
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
    read_dataset: "read data set without file meta information"
    _readxferauto_use: "=  --read-xfer-auto       use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    offset_table_empty: "leave offset table empty"
    disable_new_vr: "disable support for new VRs, convert to OB"
    group_length_remove: "always write without group length elements"
    length_undefined: "write with undefined lengths"
    _paddingretain_change: "=  --padding-retain       do not change padding (default)"
    padding_off: "no padding"
    dcm_file_in: "DICOM input filename to be converted"
    dcm_file_out: "DICOM output filename"
  }
  output {
    File out_stdout = stdout()
  }
}