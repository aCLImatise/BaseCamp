version 1.0

task Dcmconv {
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
    Boolean? transliterate
    Boolean? discard_illegal
    Boolean? no_invalid_groups
    Boolean? _writedataset_write
    Boolean? _disablenewvr_disable
    Boolean? _grouplengthremove_always
    Boolean? abort_oversized
    String dcm_file_in
    String dcm_file_out
  }
  command <<<
    dcmconv \
      ~{dcm_file_in} \
      ~{dcm_file_out} \
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
      ~{true="--transliterate" false="" transliterate} \
      ~{true="--discard-illegal" false="" discard_illegal} \
      ~{true="--no-invalid-groups" false="" no_invalid_groups} \
      ~{true="-F" false="" _writedataset_write} \
      ~{true="-u" false="" _disablenewvr_disable} \
      ~{true="-g" false="" _grouplengthremove_always} \
      ~{true="--abort-oversized" false="" abort_oversized}
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
    transliterate: "try to approximate characters that cannot be represented through similar looking characters"
    discard_illegal: "discard characters that cannot be represented in destination character set"
    no_invalid_groups: "remove elements with invalid group number"
    _writedataset_write: "--write-dataset        write data set without file meta information"
    _disablenewvr_disable: "--disable-new-vr       disable support for new VRs, convert to OB"
    _grouplengthremove_always: "--group-length-remove  always write without group length elements"
    abort_oversized: "abort on oversized explicit sequences/items"
    dcm_file_in: "DICOM input filename to be converted"
    dcm_file_out: "DICOM output filename"
  }
}