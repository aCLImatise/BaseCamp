version 1.0

task Dcmdspfn {
  input {
    Boolean? _quiet_print
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? log_level
    Boolean? log_config
  }
  command <<<
    dcmdspfn \
      ~{true="-q" false="" _quiet_print} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-config" false="" log_config}
  >>>
  parameter_meta {
    _quiet_print: "--quiet          quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose        verbose mode, print processing details"
    _debug_debug: "--debug          debug mode, print debug information"
    log_level: "[l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    log_config: "[f]ilename: string use config file f for the logger"
  }
}