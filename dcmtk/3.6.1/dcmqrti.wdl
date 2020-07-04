version 1.0

task Dcmqrti {
  input {
    Boolean? _quiet_print
    Boolean? _verbose_verbose
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
    Boolean? _disable_support
    Boolean? remote
    String peer
  }
  command <<<
    dcmqrti \
      ~{peer} \
      ~{true="-q" false="" _quiet_print} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-c" false="" _config_ilename} \
      ~{true="-to" false="" to} \
      ~{true="-ta" false="" ta} \
      ~{true="-td" false="" td} \
      ~{true="-xi" false="" xi} \
      ~{true="--aetitle" false="" ae_title} \
      ~{true="--max-pdu" false="" max_pdu} \
      ~{true="-u" false="" _disable_support} \
      ~{true="--remote" false="" remote}
  >>>
  parameter_meta {
    _quiet_print: "--quiet             quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose           verbose mode, print processing details"
    _debug_debug: "--debug             debug mode, print debug information"
    ll: "--log-level         [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config        [f]ilename: string use config file f for the logger"
    _config_ilename: "--config            [f]ilename: string use specific configuration file (default: /tmp/tmpqmdno0st/etc/dcmtk/dcmqrscp.cfg)"
    to: "--timeout           [s]econds: integer (default: unlimited) timeout for connection requests"
    ta: "--acse-timeout      [s]econds: integer (default: 30) timeout for ACSE messages"
    td: "--dimse-timeout     [s]econds: integer (default: unlimited) timeout for DIMSE messages"
    xi: "--propose-implicit  propose implicit VR little endian TS only"
    ae_title: "[a]etitle: string set my AE title (default: TELNET_INITIATOR)"
    max_pdu: "[n]umber of bytes: integer (4096..131072) set max receive pdu to n bytes (default: use value from configuration file)"
    _disable_support: "--disable-new-vr    disable support for new VRs, convert to OB"
    remote: "[t]itle: string connect to remote database defined in cfg file"
    peer: "peer host name or symbolic name from cfg file"
  }
}