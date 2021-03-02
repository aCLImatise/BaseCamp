version 1.0

task Dcmprscu {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? no_print
    Boolean? session_print
    Boolean? monochrome_one
    Boolean? config
    Boolean? printer
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
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (no_print) then "--noprint" else ""} \
      ~{if (session_print) then "--session-print" else ""} \
      ~{if (monochrome_one) then "--monochrome1" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (printer) then "--printer" else ""} \
      ~{if (sleep) then "--sleep" else ""} \
      ~{if (copies) then "--copies" else ""} \
      ~{if (medium_type) then "--medium-type" else ""} \
      ~{if (destination) then "--destination" else ""} \
      ~{if (label) then "--label" else ""} \
      ~{if (priority) then "--priority" else ""} \
      ~{if (owner) then "--owner" else ""}
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
    no_print: "do not create print-out (no n-action-rq)"
    session_print: "send film session n-action-rq (instead of film box)"
    monochrome_one: "transmit basic grayscale images in MONOCHROME1"
    config: "[f]ilename: string\\nprocess using settings from configuration file"
    printer: "[n]ame: string (default: 1st printer in cfg file)\\nselect printer with identifier n from cfg file"
    sleep: "[d]elay: integer (default: 1)\\nsleep d seconds between spooler checks"
    copies: "[v]alue: integer (1..100, default: 1)\\nset number of copies to v"
    medium_type: "[v]alue: string\\nset medium type to v"
    destination: "[v]alue: string\\nset film destination to v"
    label: "[v]alue: string\\nset film session label to v"
    priority: "[v]alue: string\\nset print priority to v"
    owner: "[v]alue: string\\nset film session owner ID to v\\n"
    dcm_file_in: "stored print file(s) to be spooled"
  }
  output {
    File out_stdout = stdout()
  }
}