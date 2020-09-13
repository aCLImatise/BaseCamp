version 1.0

task Dsr2html {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _readdataset_read
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
    Boolean? charset_check_all
    Boolean? never_expand_inline
    Boolean? no_document_header
    String dsr_file_in
    String html_file_out
    String assume_charset_c
  }
  command <<<
    dsr2html \
      ~{dsr_file_in} \
      ~{html_file_out} \
      ~{assume_charset_c} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_readdataset_read) then "-f" else ""} \
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
      ~{if (charset_check_all) then "--charset-check-all" else ""} \
      ~{if (never_expand_inline) then "--never-expand-inline" else ""} \
      ~{if (no_document_header) then "--no-document-header" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                 quiet mode, print no warnings and errors"
    _verbose_details: "--verbose               verbose mode, print processing details"
    _debug_information: "--debug                 debug mode, print debug information"
    ll: "--log-level             [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config            [f]ilename: string\\nuse config file f for the logger"
    _readdataset_read: "--read-dataset          read data set without file meta information"
    _readxferauto_use: "=  --read-xfer-auto        use TS recognition (default)"
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
    charset_check_all: "check all data elements with string values\\n(default: only PN, LO, LT, SH, ST, UC and UT)"
    never_expand_inline: "never expand content items inline"
    no_document_header: "do not render general document information"
    dsr_file_in: "DICOM SR input filename to be rendered"
    html_file_out: "HTML/XHTML output filename (default: stdout)"
    assume_charset_c: "assume charset c if no extended charset declared"
  }
  output {
    File out_stdout = stdout()
  }
}