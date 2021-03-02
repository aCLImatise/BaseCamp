version 1.0

task Dsrdump {
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
    Boolean? processing_details
    Boolean? unknown_relationship
    Boolean? invalid_item_value
    Boolean? ignore_constraints
    Boolean? ignore_item_errors
    Boolean? skip_invalid_items
    Boolean? disable_vr_checker
    Boolean? no_document_header
    Boolean? indent_nested_items
    Boolean? shorten_long_values
    Boolean? print_sop_class_short
    Boolean? no_invalid_codes
    Boolean? no_enhanced_mode
    Boolean? no_color
    String dsr_file_in
  }
  command <<<
    dsrdump \
      ~{dsr_file_in} \
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
      ~{if (processing_details) then "--processing-details" else ""} \
      ~{if (unknown_relationship) then "--unknown-relationship" else ""} \
      ~{if (invalid_item_value) then "--invalid-item-value" else ""} \
      ~{if (ignore_constraints) then "--ignore-constraints" else ""} \
      ~{if (ignore_item_errors) then "--ignore-item-errors" else ""} \
      ~{if (skip_invalid_items) then "--skip-invalid-items" else ""} \
      ~{if (disable_vr_checker) then "--disable-vr-checker" else ""} \
      ~{if (no_document_header) then "--no-document-header" else ""} \
      ~{if (indent_nested_items) then "--indent-nested-items" else ""} \
      ~{if (shorten_long_values) then "--shorten-long-values" else ""} \
      ~{if (print_sop_class_short) then "--print-sopclass-short" else ""} \
      ~{if (no_invalid_codes) then "--no-invalid-codes" else ""} \
      ~{if (no_enhanced_mode) then "--no-enhanced-mode" else ""} \
      ~{if (no_color) then "--no-color" else ""}
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
    _readxferauto_use: "=   --read-xfer-auto        use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    processing_details: "show currently processed content item"
    unknown_relationship: "accept unknown/missing relationship type"
    invalid_item_value: "accept invalid content item value\\n(e.g. violation of VR or VM definition)"
    ignore_constraints: "ignore relationship content constraints"
    ignore_item_errors: "do not abort on content item errors, just warn\\n(e.g. missing value type specific attributes)"
    skip_invalid_items: "skip invalid content items (incl. sub-tree)"
    disable_vr_checker: "disable check for VR-conformant string values"
    no_document_header: "do not print general document information"
    indent_nested_items: "indent nested items by spaces (default)"
    shorten_long_values: "print long item values shortened (default)"
    print_sop_class_short: "print short SOP class name of referenced\\nimage objects, e.g. \\\"CT image\\\" (default)"
    no_invalid_codes: "print text \\\"invalid code\\\" instead (default)"
    no_enhanced_mode: "do not indicate enhanced mode (default)"
    no_color: "do not use any ANSI escape codes (default)"
    dsr_file_in: "DICOM SR input filename to be dumped"
  }
  output {
    File out_stdout = stdout()
  }
}