version 1.0

task Dcmconv {
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
    Boolean? ignore_meta_length
    Boolean? ignore_explicit_vr
    Boolean? assume_implicit
    Boolean? disable_cp_two_four_six
    Boolean? retain_un
    Boolean? maxlength_dict
    Boolean? use_delim_items
    Boolean? handle_parse_errors
    Boolean? disable_correction
    Boolean? transliterate
    Boolean? discard_illegal
    Boolean? no_invalid_groups
    Boolean? _writedataset_write
    Boolean? _disablenewvr_disable
    Boolean? _grouplengthremove_always
    Boolean? _lengthundefined_write
    Boolean? abort_oversized
    String dcm_file_in
    String dcm_file_out
  }
  command <<<
    dcmconv \
      ~{dcm_file_in} \
      ~{dcm_file_out} \
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
      ~{if (ignore_meta_length) then "--ignore-meta-length" else ""} \
      ~{if (ignore_explicit_vr) then "--ignore-explicit-vr" else ""} \
      ~{if (assume_implicit) then "--assume-implicit" else ""} \
      ~{if (disable_cp_two_four_six) then "--disable-cp246" else ""} \
      ~{if (retain_un) then "--retain-un" else ""} \
      ~{if (maxlength_dict) then "--maxlength-dict" else ""} \
      ~{if (use_delim_items) then "--use-delim-items" else ""} \
      ~{if (handle_parse_errors) then "--handle-parse-errors" else ""} \
      ~{if (disable_correction) then "--disable-correction" else ""} \
      ~{if (transliterate) then "--transliterate" else ""} \
      ~{if (discard_illegal) then "--discard-illegal" else ""} \
      ~{if (no_invalid_groups) then "--no-invalid-groups" else ""} \
      ~{if (_writedataset_write) then "-F" else ""} \
      ~{if (_disablenewvr_disable) then "-u" else ""} \
      ~{if (_grouplengthremove_always) then "-g" else ""} \
      ~{if (_lengthundefined_write) then "-e" else ""} \
      ~{if (abort_oversized) then "--abort-oversized" else ""}
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
    ignore_meta_length: "ignore file meta information group length"
    ignore_explicit_vr: "ignore explicit VR (prefer data dictionary)"
    assume_implicit: "try to read with implicit VR little endian TS"
    disable_cp_two_four_six: "read undefined len UN as explicit VR"
    retain_un: "retain elements as UN (default)"
    maxlength_dict: "read as defined in dictionary (default)"
    use_delim_items: "use delimitation items from dataset (default)"
    handle_parse_errors: "handle parse errors and stop parsing (default)"
    disable_correction: "disable automatic data correction"
    transliterate: "try to approximate characters that cannot be\\nrepresented through similar looking characters"
    discard_illegal: "discard characters that cannot be represented\\nin destination character set"
    no_invalid_groups: "remove elements with invalid group number"
    _writedataset_write: "--write-dataset        write data set without file meta information"
    _disablenewvr_disable: "--disable-new-vr       disable support for new VRs, convert to OB"
    _grouplengthremove_always: "--group-length-remove  always write without group length elements"
    _lengthundefined_write: "--length-undefined     write with undefined lengths"
    abort_oversized: "abort on oversized explicit sequences/items"
    dcm_file_in: "DICOM input filename to be converted"
    dcm_file_out: "DICOM output filename"
  }
  output {
    File out_stdout = stdout()
  }
}