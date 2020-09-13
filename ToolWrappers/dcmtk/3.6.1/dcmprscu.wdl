version 1.0

task Dcmprscu {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? log_level
    Boolean? log_config
    Boolean? no_print
    Boolean? session_print
    Boolean? monochrome_one
    Boolean? _config_stringprocess
    Boolean? _printer_printer
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
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (no_print) then "--noprint" else ""} \
      ~{if (session_print) then "--session-print" else ""} \
      ~{if (monochrome_one) then "--monochrome1" else ""} \
      ~{if (_config_stringprocess) then "-c" else ""} \
      ~{if (_printer_printer) then "-p" else ""} \
      ~{if (sleep) then "--sleep" else ""} \
      ~{if (copies) then "--copies" else ""} \
      ~{if (medium_type) then "--medium-type" else ""} \
      ~{if (destination) then "--destination" else ""} \
      ~{if (label) then "--label" else ""} \
      ~{if (priority) then "--priority" else ""} \
      ~{if (owner) then "--owner" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet          quiet mode, print no warnings and errors"
    _verbose_details: "--verbose        verbose mode, print processing details"
    _debug_information: "--debug          debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    no_print: "do not create print-out (no n-action-rq)"
    session_print: "send film session n-action-rq (instead of film box)"
    monochrome_one: "transmit basic grayscale images in MONOCHROME1"
    _config_stringprocess: "--config         [f]ilename: string\\nprocess using settings from configuration file"
    _printer_printer: "--printer        [n]ame: string (default: 1st printer in cfg file)\\nselect printer with identifier n from cfg file"
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