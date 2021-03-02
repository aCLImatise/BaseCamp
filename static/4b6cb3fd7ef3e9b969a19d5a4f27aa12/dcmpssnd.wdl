version 1.0

task Dcmpssnd {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
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
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""}
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