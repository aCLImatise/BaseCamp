version 1.0

task Echoscu {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? ae_title
    Boolean? etitle_string_set_called
    Boolean? propose_ts
    Boolean? propose_pc
    Boolean? to
    Boolean? ta
    Boolean? td
    Boolean? max_pdu
    Boolean? repeat
    Boolean? abort
    Boolean? pw
    Boolean? pem_keys
    Boolean? der_keys
    Boolean? rc
    Boolean? vc
    Boolean? ic
    String peer
    String port
  }
  command <<<
    echoscu \
      ~{peer} \
      ~{port} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="--aetitle" false="" ae_title} \
      ~{true="--call" false="" etitle_string_set_called} \
      ~{true="--propose-ts" false="" propose_ts} \
      ~{true="--propose-pc" false="" propose_pc} \
      ~{true="-to" false="" to} \
      ~{true="-ta" false="" ta} \
      ~{true="-td" false="" td} \
      ~{true="--max-pdu" false="" max_pdu} \
      ~{true="--repeat" false="" repeat} \
      ~{true="--abort" false="" abort} \
      ~{true="-pw" false="" pw} \
      ~{true="--pem-keys" false="" pem_keys} \
      ~{true="--der-keys" false="" der_keys} \
      ~{true="-rc" false="" rc} \
      ~{true="-vc" false="" vc} \
      ~{true="-ic" false="" ic}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet              quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose            verbose mode, print processing details"
    _debug_debug: "--debug              debug mode, print debug information"
    ll: "--log-level          [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config         [f]ilename: string use config file f for the logger"
    ae_title: "[a]etitle: string set my calling AE title (default: ECHOSCU)"
    etitle_string_set_called: "[a]etitle: string set called AE title of peer (default: ANY-SCP)"
    propose_ts: "[n]umber: integer (1..36) propose n transfer syntaxes"
    propose_pc: "[n]umber: integer (1..128) propose n presentation contexts"
    to: "--timeout            [s]econds: integer (default: unlimited) timeout for connection requests"
    ta: "--acse-timeout       [s]econds: integer (default: 30) timeout for ACSE messages"
    td: "--dimse-timeout      [s]econds: integer (default: unlimited) timeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (default: 16384)"
    repeat: "[n]umber: integer repeat n times"
    abort: "abort association instead of releasing it"
    pw: "--null-passwd        use empty string as password"
    pem_keys: "read keys and certificates as PEM file (default)"
    der_keys: "read keys and certificates as DER file"
    rc: "--require-peer-cert  verify peer certificate, fail if absent (default)"
    vc: "--verify-peer-cert   verify peer certificate if present"
    ic: "--ignore-peer-cert   don't verify peer certificate"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
  }
}