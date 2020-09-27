version 1.0

task Dcmpssnd {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? log_level
    Boolean? log_config
    File config_file
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
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet       quiet mode, print no warnings and errors"
    _verbose_details: "--verbose     verbose mode, print processing details"
    _debug_information: "--debug       debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger\\n"
    config_file: "configuration file to be read"
    target: "symbolic identifier of send target in config file"
    study: "study instance UID of study in database to be sent"
    series: "series instance UID (default: send complete study)"
    instance: "SOP instance UID (default: send complete series)"
  }
  output {
    File out_stdout = stdout()
  }
}