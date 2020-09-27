version 1.0

task Dcmqrti {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? _config_ilename
    Boolean? to
    Boolean? ta
    Boolean? td
    Boolean? xi
    Boolean? ae_title
    Boolean? max_pdu
    Boolean? _disablenewvr_disable
    Boolean? remote
    String peer
  }
  command <<<
    dcmqrti \
      ~{peer} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_debug) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_config_ilename) then "-c" else ""} \
      ~{if (to) then "-to" else ""} \
      ~{if (ta) then "-ta" else ""} \
      ~{if (td) then "-td" else ""} \
      ~{if (xi) then "-xi" else ""} \
      ~{if (ae_title) then "--aetitle" else ""} \
      ~{if (max_pdu) then "--max-pdu" else ""} \
      ~{if (_disablenewvr_disable) then "-u" else ""} \
      ~{if (remote) then "--remote" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet             quiet mode, print no warnings and errors"
    _verbose_details: "--verbose           verbose mode, print processing details"
    _debug_debug: "--debug             debug mode, print debug information"
    ll: "--log-level         [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config        [f]ilename: string\\nuse config file f for the logger"
    _config_ilename: "--config            [f]ilename: string\\nuse specific configuration file\\n(default: /usr/local/etc/dcmtk/dcmqrscp.cfg)"
    to: "--timeout           [s]econds: integer (default: unlimited)\\ntimeout for connection requests"
    ta: "--acse-timeout      [s]econds: integer (default: 30)\\ntimeout for ACSE messages"
    td: "--dimse-timeout     [s]econds: integer (default: unlimited)\\ntimeout for DIMSE messages"
    xi: "--propose-implicit  propose implicit VR little endian TS only"
    ae_title: "[a]etitle: string\\nset my AE title (default: TELNET_INITIATOR)"
    max_pdu: "[n]umber of bytes: integer (4096..131072)\\nset max receive pdu to n bytes\\n(default: use value from configuration file)"
    _disablenewvr_disable: "--disable-new-vr    disable support for new VRs, convert to OB"
    remote: "[t]itle: string\\nconnect to remote database defined in cfg file\\n"
    peer: "peer host name or symbolic name from cfg file"
  }
  output {
    File out_stdout = stdout()
  }
}