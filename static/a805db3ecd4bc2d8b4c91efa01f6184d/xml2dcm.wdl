version 1.0

task Xml2dcm {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? _ignoremetainfo_ignore
    Boolean? _disablenewvr_disable
    Boolean? _grouplengthremove_always
    Boolean? _lengthundefined_write
    String xml_file_in
    String dcm_file_out
  }
  command <<<
    xml2dcm \
      ~{xml_file_in} \
      ~{dcm_file_out} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-f" false="" _ignoremetainfo_ignore} \
      ~{true="-u" false="" _disablenewvr_disable} \
      ~{true="-g" false="" _grouplengthremove_always} \
      ~{true="-e" false="" _lengthundefined_write}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose              verbose mode, print processing details"
    _debug_debug: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config           [f]ilename: string use config file f for the logger"
    _ignoremetainfo_ignore: "--ignore-meta-info     ignore file meta information"
    _disablenewvr_disable: "--disable-new-vr       disable support for new VRs, convert to OB"
    _grouplengthremove_always: "--group-length-remove  always write without group length elements"
    _lengthundefined_write: "--length-undefined     write with undefined lengths"
    xml_file_in: "XML input filename to be converted (stdin: \"-\")"
    dcm_file_out: "DICOM output filename"
  }
}