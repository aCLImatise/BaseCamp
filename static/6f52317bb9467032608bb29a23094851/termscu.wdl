version 1.0

task Termscu {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? ae_title
    Boolean? etitle_string_set_called
    Boolean? max_pdu
    String peer
    String port
  }
  command <<<
    termscu \
      ~{peer} \
      ~{port} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="--aetitle" false="" ae_title} \
      ~{true="--call" false="" etitle_string_set_called} \
      ~{true="--max-pdu" false="" max_pdu}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet       quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose     verbose mode, print processing details"
    _debug_debug: "--debug       debug mode, print debug information"
    ll: "--log-level   [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config  [f]ilename: string use config file f for the logger"
    ae_title: "[a]etitle: string set my calling AE title (default: TERMSCU)"
    etitle_string_set_called: "[a]etitle: string set called AE title of peer (default: ANY-SCP)"
    max_pdu: "[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (default: 16384)"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
  }
}