version 1.0

task Dcmprscu {
  input {
    Boolean? _quiet_print
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? log_level
    Boolean? log_config
    Boolean? no_print
    Boolean? session_print
    Boolean? monochrome_one
    Boolean? sleep
    Boolean? copies
    Boolean? medium_type
    Boolean? destination
    Boolean? label
    Boolean? priority
    Boolean? owner
    String dcm_file_in
  }
  command <<<
    dcmprscu \
      ~{dcm_file_in} \
      ~{true="-q" false="" _quiet_print} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-config" false="" log_config} \
      ~{true="--noprint" false="" no_print} \
      ~{true="--session-print" false="" session_print} \
      ~{true="--monochrome1" false="" monochrome_one} \
      ~{true="--sleep" false="" sleep} \
      ~{true="--copies" false="" copies} \
      ~{true="--medium-type" false="" medium_type} \
      ~{true="--destination" false="" destination} \
      ~{true="--label" false="" label} \
      ~{true="--priority" false="" priority} \
      ~{true="--owner" false="" owner}
  >>>
  parameter_meta {
    _quiet_print: "--quiet          quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose        verbose mode, print processing details"
    _debug_debug: "--debug          debug mode, print debug information"
    log_level: "[l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    log_config: "[f]ilename: string use config file f for the logger"
    no_print: "do not create print-out (no n-action-rq)"
    session_print: "send film session n-action-rq (instead of film box)"
    monochrome_one: "transmit basic grayscale images in MONOCHROME1"
    sleep: "[d]elay: integer (default: 1) sleep d seconds between spooler checks"
    copies: "[v]alue: integer (1..100, default: 1) set number of copies to v"
    medium_type: "[v]alue: string set medium type to v"
    destination: "[v]alue: string set film destination to v"
    label: "[v]alue: string set film session label to v"
    priority: "[v]alue: string set print priority to v"
    owner: "[v]alue: string set film session owner ID to v"
    dcm_file_in: "stored print file(s) to be spooled"
  }
}