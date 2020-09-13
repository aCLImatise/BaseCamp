version 1.0

task Termscu {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? ae_title
    Boolean? etitle_stringset_called
    Boolean? max_pdu
    String peer
    String port
  }
  command <<<
    termscu \
      ~{peer} \
      ~{port} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (etitle_stringset_called) then "--call" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet       quiet mode, print no warnings and errors"
    _verbose_details: "--verbose     verbose mode, print processing details"
    _debug_information: "--debug       debug mode, print debug information"
    ll: "--log-level   [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config  [f]ilename: string\\nuse config file f for the logger"
    ae_title: "[a]etitle: string\\nset my calling AE title (default: TERMSCU)"
    etitle_stringset_called: "[a]etitle: string\\nset called AE title of peer (default: ANY-SCP)"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (default: 16384)\\n"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
  }
  output {
    File out_stdout = stdout()
  }
}