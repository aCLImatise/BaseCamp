version 1.0

task Dcmscale {
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
    Boolean? ignore_aspect
    Boolean? no_interpolation
    Boolean? no_scaling
    Boolean? write_dataset
    Boolean? disable_new_vr
    Boolean? group_length_remove
    Boolean? length_undefined
    Boolean? _paddingretain_change
    Boolean? padding_off
    String dcm_file_in
    String dcm_file_out
    Int integer
  }
  command <<<
    dcmscale \
      ~{dcm_file_in} \
      ~{dcm_file_out} \
      ~{integer} \
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
      ~{if (ignore_aspect) then "--ignore-aspect" else ""} \
      ~{if (no_interpolation) then "--no-interpolation" else ""} \
      ~{if (no_scaling) then "--no-scaling" else ""} \
      ~{if (write_dataset) then "--write-dataset" else ""} \
      ~{if (disable_new_vr) then "--disable-new-vr" else ""} \
      ~{if (group_length_remove) then "--group-length-remove" else ""} \
      ~{if (length_undefined) then "--length-undefined" else ""} \
      ~{if (_paddingretain_change) then "-p" else ""} \
      ~{if (padding_off) then "--padding-off" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arguments: "print expanded command line arguments"
    quiet: "quiet mode, print no warnings and errors"
    verbose: "verbose mode, print processing details"
    debug: "debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    read_dataset: "read data set without file meta information"
    _readxferauto_use: "=   --read-xfer-auto       use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    ignore_aspect: "ignore pixel aspect ratio when scaling"
    no_interpolation: "no interpolation when scaling"
    no_scaling: "no scaling, ignore pixel aspect ratio (default)"
    write_dataset: "write data set without file meta information"
    disable_new_vr: "disable support for new VRs, convert to OB"
    group_length_remove: "always write without group length elements"
    length_undefined: "write with undefined lengths"
    _paddingretain_change: "=   --padding-retain       do not change padding\\n(default if not --write-dataset)"
    padding_off: "no padding (implicit if --write-dataset)"
    dcm_file_in: "DICOM input filename to be scaled"
    dcm_file_out: "DICOM output filename to be written"
    integer: "use interpolation when scaling (1..4, def: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}