version 1.0

task Echoscu {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? ae_title
    Boolean? etitle_stringset_called
    Boolean? propose_ts
    Boolean? propose_pc
    Boolean? to
    Boolean? ta
    Boolean? td
    Boolean? max_pdu
    Boolean? repeat
    Boolean? abort
    Boolean? disable_tls
    Boolean? pw
    Boolean? pem_keys
    Boolean? der_keys
    Boolean? rc
    Boolean? vc
    Boolean? ic
    String peer
    String port
    String use_specified_password
  }
  command <<<
    echoscu \
      ~{peer} \
      ~{port} \
      ~{use_specified_password} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (etitle_stringset_called) then "--call" else ""} \
      ~{if (propose_ts) then "--propose-ts" else ""} \
      ~{if (propose_pc) then "--propose-pc" else ""} \
      ~{if (to) then "-to" else ""} \
      ~{if (ta) then "-ta" else ""} \
      ~{if (td) then "-td" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (repeat) then "--repeat" else ""} \
      ~{if (abort) then "--abort" else ""} \
      ~{if (disable_tls) then "--disable-tls" else ""} \
      ~{if (pw) then "-pw" else ""} \
      ~{if (pem_keys) then "--pem-keys" else ""} \
      ~{if (der_keys) then "--der-keys" else ""} \
      ~{if (rc) then "-rc" else ""} \
      ~{if (vc) then "-vc" else ""} \
      ~{if (ic) then "-ic" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet              quiet mode, print no warnings and errors"
    _verbose_details: "--verbose            verbose mode, print processing details"
    _debug_information: "--debug              debug mode, print debug information"
    ll: "--log-level          [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config         [f]ilename: string\\nuse config file f for the logger"
    ae_title: "[a]etitle: string\\nset my calling AE title (default: ECHOSCU)"
    etitle_stringset_called: "[a]etitle: string\\nset called AE title of peer (default: ANY-SCP)"
    propose_ts: "[n]umber: integer (1..36)\\npropose n transfer syntaxes"
    propose_pc: "[n]umber: integer (1..128)\\npropose n presentation contexts"
    to: "--timeout            [s]econds: integer (default: unlimited)\\ntimeout for connection requests"
    ta: "--acse-timeout       [s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    td: "--dimse-timeout      [s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (default: 16384)"
    repeat: "[n]umber: integer\\nrepeat n times"
    abort: "abort association instead of releasing it"
    disable_tls: "use normal TCP/IP connection (default)"
    pw: "--null-passwd        use empty string as password"
    pem_keys: "read keys and certificates as PEM file (default)"
    der_keys: "read keys and certificates as DER file"
    rc: "--require-peer-cert  verify peer certificate, fail if absent (default)"
    vc: "--verify-peer-cert   verify peer certificate if present"
    ic: "--ignore-peer-cert   don't verify peer certificate"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
    use_specified_password: "use specified password"
  }
  output {
    File out_stdout = stdout()
  }
}