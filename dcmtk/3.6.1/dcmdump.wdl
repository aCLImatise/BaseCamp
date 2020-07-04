version 1.0

task Dcmdump {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? _readdataset_read
    Boolean? _readxferauto_use
    Boolean? read_xfer_detect
    Boolean? read_xfer_little
    Boolean? read_xfer_big
    Boolean? read_xfer_implicit
    Boolean? ignore_meta_length
    Boolean? ignore_explicit_vr
    Boolean? assume_implicit
    Boolean? disable_cp_two_four_six
    Boolean? handle_parse_errors
    Boolean? disable_correction
    Boolean? no_uid_names
    Boolean? print_non_ascii
    Boolean? _nocolor_use
    Boolean? _noprepend_prepend
    String dcm_file_in
  }
  command <<<
    dcmdump \
      ~{dcm_file_in} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-f" false="" _readdataset_read} \
      ~{true="-t" false="" _readxferauto_use} \
      ~{true="--read-xfer-detect" false="" read_xfer_detect} \
      ~{true="--read-xfer-little" false="" read_xfer_little} \
      ~{true="--read-xfer-big" false="" read_xfer_big} \
      ~{true="--read-xfer-implicit" false="" read_xfer_implicit} \
      ~{true="--ignore-meta-length" false="" ignore_meta_length} \
      ~{true="--ignore-explicit-vr" false="" ignore_explicit_vr} \
      ~{true="--assume-implicit" false="" assume_implicit} \
      ~{true="--disable-cp246" false="" disable_cp_two_four_six} \
      ~{true="--handle-parse-errors" false="" handle_parse_errors} \
      ~{true="--disable-correction" false="" disable_correction} \
      ~{true="--no-uid-names" false="" no_uid_names} \
      ~{true="--print-nonascii" false="" print_non_ascii} \
      ~{true="-C" false="" _nocolor_use} \
      ~{true="-p" false="" _noprepend_prepend}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose              verbose mode, print processing details"
    _debug_debug: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config           [f]ilename: string use config file f for the logger"
    _readdataset_read: "--read-dataset         read data set without file meta information"
    _readxferauto_use: "=  --read-xfer-auto       use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    ignore_meta_length: "ignore file meta information group length"
    ignore_explicit_vr: "ignore explicit VR (prefer data dictionary)"
    assume_implicit: "try to read with implicit VR little endian TS"
    disable_cp_two_four_six: "read undefined len UN as explicit VR"
    handle_parse_errors: "handle parse errors and stop parsing (default)"
    disable_correction: "disable automatic data correction"
    no_uid_names: "do not map well-known UID numbers to names"
    print_non_ascii: "print non-ASCII and control chars (default)"
    _nocolor_use: "--no-color             do not use any ANSI escape codes (default)"
    _noprepend_prepend: "--no-prepend           do not prepend hierarchy to tag (default)"
    dcm_file_in: "DICOM input file or directory to be dumped"
  }
}