version 1.0

task Dcmqrti {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? config
    Boolean? timeout
    Boolean? acse_timeout
    Boolean? dim_se_timeout
    Boolean? propose_implicit
    Boolean? ae_title
    Boolean? max_pdu
    Boolean? disable_new_vr
    Boolean? remote
    String peer
  }
  command <<<
    dcmqrti \
      ~{peer} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (timeout) then "--timeout" else ""} \
      ~{if (acse_timeout) then "--acse-timeout" else ""} \
      ~{if (dim_se_timeout) then "--dimse-timeout" else ""} \
      ~{if (propose_implicit) then "--propose-implicit" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (disable_new_vr) then "--disable-new-vr" else ""} \
      ~{if (remote) then "--remote" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arguments: "print expanded command line arguments"
    quiet: "quiet mode, print no warnings and errors"
    verbose: "verbose mode, print processing details"
    debug: "debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    config: "[f]ilename: string\\nuse specific configuration file\\n(default: /usr/local/etc/dcmtk/dcmqrscp.cfg)"
    timeout: "[s]econds: integer (default: unlimited)\\ntimeout for connection requests"
    acse_timeout: "[s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    dim_se_timeout: "[s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    propose_implicit: "propose implicit VR little endian TS only"
    ae_title: "[a]etitle: string\\nset my AE title (default: TELNET_INITIATOR)"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes\\n(default: use value from configuration file)"
    disable_new_vr: "disable support for new VRs, convert to OB"
    remote: "[t]itle: string\\nconnect to remote database defined in cfg file\\n"
    peer: "peer host name or symbolic name from cfg file"
  }
  output {
    File out_stdout = stdout()
  }
}