version 1.0

task Dcmprscp {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? log_file
    Boolean? config
    Boolean? printer
  }
  command <<<
    dcmprscp \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (log_file) then "--logfile" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (printer) then "--printer" else ""}
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
    log_file: "write a log file (not with --log-config)"
    config: "[f]ilename: string\\nprocess using settings from configuration file"
    printer: "[n]ame: string (default: 1st printer in config file)\\nselect printer with identifier n from config file"
  }
  output {
    File out_stdout = stdout()
  }
}