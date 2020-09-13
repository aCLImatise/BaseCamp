version 1.0

task Dcmrecv {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? xf
    Boolean? ae_title
    Boolean? use_called_ae_title
    Boolean? ta
    Boolean? td
    Boolean? max_pdu
    Boolean? disable_host_lookup
    Directory? od
    Boolean? _nosubdir_generate
    Boolean? fe
    Boolean? _normal_allow
    Boolean? ignore
    String port
  }
  command <<<
    dcmrecv \
      ~{port} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (xf) then "-xf" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (use_called_ae_title) then "--use-called-aetitle" else ""} \
      ~{if (ta) then "-ta" else ""} \
      ~{if (td) then "-td" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (disable_host_lookup) then "--disable-host-lookup" else ""} \
      ~{if (od) then "-od" else ""} \
      ~{if (_nosubdir_generate) then "-s" else ""} \
      ~{if (fe) then "-fe" else ""} \
      ~{if (_normal_allow) then "-B" else ""} \
      ~{if (ignore) then "--ignore" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_details: "--verbose              verbose mode, print processing details"
    _debug_information: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config           [f]ilename: string\\nuse config file f for the logger"
    xf: "--config-file          [f]ilename, [p]rofile: string\\nuse profile p from configuration file f"
    ae_title: "[a]etitle: string\\nset my AE title (default: DCMRECV)"
    use_called_ae_title: "always respond with called AE title"
    ta: "--acse-timeout         [s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    td: "--dimse-timeout        [s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (default: 16384)"
    disable_host_lookup: "disable hostname lookup"
    od: "--output-directory     [d]irectory: string (default: \\\".\\\")\\nwrite received objects to existing directory d"
    _nosubdir_generate: "--no-subdir            do not generate any subdirectories (default)"
    fe: "--filename-extension   [e]xtension: string (default: none)\\nappend e to all generated filenames"
    _normal_allow: "--normal               allow implicit format conversions (default)"
    ignore: "ignore dataset, receive but do not store it"
    port: "tcp/ip port number to listen on"
  }
  output {
    File out_stdout = stdout()
    Directory out_od = "${in_od}"
  }
}