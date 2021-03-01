version 1.0

task Dsr2xml {
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
    Boolean? unknown_relationship
    Boolean? invalid_item_value
    Boolean? ignore_constraints
    Boolean? ignore_item_errors
    Boolean? skip_invalid_items
    Boolean? disable_vr_checker
    String dsr_file_in
    String xml_file_out
  }
  command <<<
    dsr2xml \
      ~{dsr_file_in} \
      ~{xml_file_out} \
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
      ~{if (unknown_relationship) then "--unknown-relationship" else ""} \
      ~{if (invalid_item_value) then "--invalid-item-value" else ""} \
      ~{if (ignore_constraints) then "--ignore-constraints" else ""} \
      ~{if (ignore_item_errors) then "--ignore-item-errors" else ""} \
      ~{if (skip_invalid_items) then "--skip-invalid-items" else ""} \
      ~{if (disable_vr_checker) then "--disable-vr-checker" else ""}
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
    _readxferauto_use: "=  --read-xfer-auto        use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    unknown_relationship: "accept unknown/missing relationship type"
    invalid_item_value: "accept invalid content item value\\n(e.g. violation of VR or VM definition)"
    ignore_constraints: "ignore relationship content constraints"
    ignore_item_errors: "do not abort on content item errors, just warn\\n(e.g. missing value type specific attributes)"
    skip_invalid_items: "skip invalid content items (incl. sub-tree)"
    disable_vr_checker: "disable check for VR-conformant string values"
    dsr_file_in: "DICOM SR input filename to be converted"
    xml_file_out: "XML output filename (default: stdout)"
  }
  output {
    File out_stdout = stdout()
  }
}