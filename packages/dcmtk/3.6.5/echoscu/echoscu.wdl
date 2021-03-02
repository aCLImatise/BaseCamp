version 1.0

task Echoscu {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? ae_title
    Boolean? etitle_stringset_called
    Boolean? propose_ts
    Boolean? propose_pc
    Boolean? timeout
    Boolean? socket_timeout
    Boolean? acse_timeout
    Boolean? dim_se_timeout
    Boolean? max_pdu
    Boolean? repeat
    Boolean? abort
    Boolean? disable_tls
    Boolean? null_passwd
    Boolean? pem_keys
    Boolean? der_keys
    Boolean? require_peer_cert
    Boolean? ignore_peer_cert
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
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (etitle_stringset_called) then "--call" else ""} \
      ~{if (propose_ts) then "--propose-ts" else ""} \
      ~{if (propose_pc) then "--propose-pc" else ""} \
      ~{if (timeout) then "--timeout" else ""} \
      ~{if (socket_timeout) then "--socket-timeout" else ""} \
      ~{if (acse_timeout) then "--acse-timeout" else ""} \
      ~{if (dim_se_timeout) then "--dimse-timeout" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (repeat) then "--repeat" else ""} \
      ~{if (abort) then "--abort" else ""} \
      ~{if (disable_tls) then "--disable-tls" else ""} \
      ~{if (null_passwd) then "--null-passwd" else ""} \
      ~{if (pem_keys) then "--pem-keys" else ""} \
      ~{if (der_keys) then "--der-keys" else ""} \
      ~{if (require_peer_cert) then "--require-peer-cert" else ""} \
      ~{if (ignore_peer_cert) then "--ignore-peer-cert" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0"
  }
  parameter_meta {
    arguments: "print expanded command line arguments"
    quiet: "quiet mode, print no warnings and errors"
    verbose: "verbose mode, print processing details"
    debug: "debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    ae_title: "[a]etitle: string\\nset my calling AE title (default: ECHOSCU)"
    etitle_stringset_called: "[a]etitle: string\\nset called AE title of peer (default: ANY-SCP)"
    propose_ts: "[n]umber: integer (1..38)\\npropose n transfer syntaxes"
    propose_pc: "[n]umber: integer (1..128)\\npropose n presentation contexts"
    timeout: "[s]econds: integer (default: unlimited)\\ntimeout for connection requests"
    socket_timeout: "[s]econds: integer (default: 60)\\ntimeout for network socket (0 for none)"
    acse_timeout: "[s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    dim_se_timeout: "[s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes (default: 16384)"
    repeat: "[n]umber: integer\\nrepeat n times"
    abort: "abort association instead of releasing it"
    disable_tls: "use normal TCP/IP connection (default)"
    null_passwd: "use empty string as password"
    pem_keys: "read keys and certificates as PEM file (default)"
    der_keys: "read keys and certificates as DER file"
    require_peer_cert: "verify peer certificate, fail if absent (default)"
    ignore_peer_cert: "don't verify peer certificate"
    peer: "hostname of DICOM peer"
    port: "tcp/ip port number of peer"
    use_specified_password: "use specified password"
  }
  output {
    File out_stdout = stdout()
  }
}