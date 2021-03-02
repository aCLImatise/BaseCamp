version 1.0

task Dcmdump {
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
    Boolean? no_recurse
    Boolean? load_short
    Boolean? ignore_meta_length
    Boolean? ignore_explicit_vr
    Boolean? assume_implicit
    Boolean? disable_cp_two_four_six
    Boolean? retain_un
    Boolean? maxlength_dict
    Boolean? use_delim_items
    Boolean? handle_parse_errors
    Boolean? disable_correction
    Boolean? print_short
    Boolean? print_indented
    Boolean? no_uid_names
    Boolean? print_non_ascii
    Boolean? no_color
    Boolean? stop_on_error
    Boolean? search_first
    Boolean? no_prepend
    String dcm_file_in
  }
  command <<<
    dcmdump \
      ~{dcm_file_in} \
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
      ~{if (no_recurse) then "--no-recurse" else ""} \
      ~{if (load_short) then "--load-short" else ""} \
      ~{if (ignore_meta_length) then "--ignore-meta-length" else ""} \
      ~{if (ignore_explicit_vr) then "--ignore-explicit-vr" else ""} \
      ~{if (assume_implicit) then "--assume-implicit" else ""} \
      ~{if (disable_cp_two_four_six) then "--disable-cp246" else ""} \
      ~{if (retain_un) then "--retain-un" else ""} \
      ~{if (maxlength_dict) then "--maxlength-dict" else ""} \
      ~{if (use_delim_items) then "--use-delim-items" else ""} \
      ~{if (handle_parse_errors) then "--handle-parse-errors" else ""} \
      ~{if (disable_correction) then "--disable-correction" else ""} \
      ~{if (print_short) then "--print-short" else ""} \
      ~{if (print_indented) then "--print-indented" else ""} \
      ~{if (no_uid_names) then "--no-uid-names" else ""} \
      ~{if (print_non_ascii) then "--print-nonascii" else ""} \
      ~{if (no_color) then "--no-color" else ""} \
      ~{if (stop_on_error) then "--stop-on-error" else ""} \
      ~{if (search_first) then "--search-first" else ""} \
      ~{if (no_prepend) then "--no-prepend" else ""}
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
    _readxferauto_use: "=  --read-xfer-auto       use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    no_recurse: "do not recurse within directories (default)"
    load_short: "do not load very long values (e.g. pixel data)"
    ignore_meta_length: "ignore file meta information group length"
    ignore_explicit_vr: "ignore explicit VR (prefer data dictionary)"
    assume_implicit: "try to read with implicit VR little endian TS"
    disable_cp_two_four_six: "read undefined len UN as explicit VR"
    retain_un: "retain elements as UN (default)"
    maxlength_dict: "read as defined in dictionary (default)"
    use_delim_items: "use delimitation items from dataset (default)"
    handle_parse_errors: "handle parse errors and stop parsing (default)"
    disable_correction: "disable automatic data correction"
    print_short: "print long tag values shortened (default)"
    print_indented: "print hierarchical structure indented (default)"
    no_uid_names: "do not map well-known UID numbers to names"
    print_non_ascii: "print non-ASCII and control chars (default)"
    no_color: "do not use any ANSI escape codes (default)"
    stop_on_error: "do not print if file is damaged (default)"
    search_first: "only print first instance of searched tags"
    no_prepend: "do not prepend hierarchy to tag (default)"
    dcm_file_in: "DICOM input file or directory to be dumped"
  }
  output {
    File out_stdout = stdout()
  }
}