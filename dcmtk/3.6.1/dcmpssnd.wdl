version 1.0

task Dcmpssnd {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? log_level
    Boolean? log_config
    String config_file
    String target
    String study
    String series
    String instance
  }
  command <<<
    dcmpssnd \
      ~{config_file} \
      ~{target} \
      ~{study} \
      ~{series} \
      ~{instance} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-config" false="" log_config}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet       quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose     verbose mode, print processing details"
    _debug_debug: "--debug       debug mode, print debug information"
    log_level: "[l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    log_config: "[f]ilename: string use config file f for the logger"
    config_file: "configuration file to be read"
    target: "symbolic identifier of send target in config file"
    study: "study instance UID of study in database to be sent"
    series: "series instance UID (default: send complete study)"
    instance: "SOP instance UID (default: send complete series)"
  }
}