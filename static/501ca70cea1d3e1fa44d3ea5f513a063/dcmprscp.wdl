version 1.0

task Dcmprscp {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? log_level
    Boolean? log_config
    Boolean? _logfile_write
    Boolean? _config_stringprocess
    Boolean? _printer_ame
  }
  command <<<
    dcmprscp \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (_logfile_write) then "-l" else ""} \
      ~{if (_config_stringprocess) then "-c" else ""} \
      ~{if (_printer_ame) then "-p" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet       quiet mode, print no warnings and errors"
    _verbose_details: "--verbose     verbose mode, print processing details"
    _debug_information: "--debug       debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    _logfile_write: "--logfile     write a log file (not with --log-config)"
    _config_stringprocess: "--config      [f]ilename: string\\nprocess using settings from configuration file"
    _printer_ame: "--printer     [n]ame: string (default: 1st printer in config file)\\nselect printer with identifier n from config file"
  }
  output {
    File out_stdout = stdout()
  }
}