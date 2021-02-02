version 1.0

task Dcmdump {
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
    Boolean? _norecurse_recurse
    Boolean? _loadshort_load
    Boolean? ignore_meta_length
    Boolean? ignore_explicit_vr
    Boolean? assume_implicit
    Boolean? disable_cp_two_four_six
    Boolean? retain_un
    Boolean? maxlength_dict
    Boolean? use_delim_items
    Boolean? handle_parse_errors
    Boolean? disable_correction
    Boolean? _printshort_print
    Boolean? _printindented_print
    Boolean? no_uid_names
    Boolean? print_non_ascii
    Boolean? _nocolor_use
    Boolean? _stoponerror_print
    Boolean? _searchfirst_only
    Boolean? _noprepend_prepend
    String dcm_file_in
  }
  command <<<
    dcmdump \
      ~{dcm_file_in} \
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
      ~{if (_norecurse_recurse) then "-r" else ""} \
      ~{if (_loadshort_load) then "-M" else ""} \
      ~{if (ignore_meta_length) then "--ignore-meta-length" else ""} \
      ~{if (ignore_explicit_vr) then "--ignore-explicit-vr" else ""} \
      ~{if (assume_implicit) then "--assume-implicit" else ""} \
      ~{if (disable_cp_two_four_six) then "--disable-cp246" else ""} \
      ~{if (retain_un) then "--retain-un" else ""} \
      ~{if (maxlength_dict) then "--maxlength-dict" else ""} \
      ~{if (use_delim_items) then "--use-delim-items" else ""} \
      ~{if (handle_parse_errors) then "--handle-parse-errors" else ""} \
      ~{if (disable_correction) then "--disable-correction" else ""} \
      ~{if (_printshort_print) then "-L" else ""} \
      ~{if (_printindented_print) then "-T" else ""} \
      ~{if (no_uid_names) then "--no-uid-names" else ""} \
      ~{if (print_non_ascii) then "--print-nonascii" else ""} \
      ~{if (_nocolor_use) then "-C" else ""} \
      ~{if (_stoponerror_print) then "-E" else ""} \
      ~{if (_searchfirst_only) then "-s" else ""} \
      ~{if (_noprepend_prepend) then "-p" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_details: "--verbose              verbose mode, print processing details"
    _debug_information: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config           [f]ilename: string\\nuse config file f for the logger"
    _readdataset_read: "--read-dataset         read data set without file meta information"
    _readxferauto_use: "=  --read-xfer-auto       use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    _norecurse_recurse: "--no-recurse           do not recurse within directories (default)"
    _loadshort_load: "--load-short           do not load very long values (e.g. pixel data)"
    ignore_meta_length: "ignore file meta information group length"
    ignore_explicit_vr: "ignore explicit VR (prefer data dictionary)"
    assume_implicit: "try to read with implicit VR little endian TS"
    disable_cp_two_four_six: "read undefined len UN as explicit VR"
    retain_un: "retain elements as UN (default)"
    maxlength_dict: "read as defined in dictionary (default)"
    use_delim_items: "use delimitation items from dataset (default)"
    handle_parse_errors: "handle parse errors and stop parsing (default)"
    disable_correction: "disable automatic data correction"
    _printshort_print: "--print-short          print long tag values shortened (default)"
    _printindented_print: "--print-indented       print hierarchical structure indented (default)"
    no_uid_names: "do not map well-known UID numbers to names"
    print_non_ascii: "print non-ASCII and control chars (default)"
    _nocolor_use: "--no-color             do not use any ANSI escape codes (default)"
    _stoponerror_print: "--stop-on-error        do not print if file is damaged (default)"
    _searchfirst_only: "--search-first         only print first instance of searched tags"
    _noprepend_prepend: "--no-prepend           do not prepend hierarchy to tag (default)"
    dcm_file_in: "DICOM input file or directory to be dumped"
  }
  output {
    File out_stdout = stdout()
  }
}