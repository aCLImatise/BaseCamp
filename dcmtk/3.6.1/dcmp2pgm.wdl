version 1.0

task Dcmp2pgm {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? log_level
    Boolean? log_config
    Boolean? _pstate_stringprocess
    Boolean? _config_ilename
    Boolean? _frame_integerprocess
    Boolean? _pgm_save
    String dcm_file_in
    String bitmap_out
  }
  command <<<
    dcmp2pgm \
      ~{dcm_file_in} \
      ~{bitmap_out} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (_pstate_stringprocess) then "-p" else ""} \
      ~{if (_config_ilename) then "-c" else ""} \
      ~{if (_frame_integerprocess) then "-f" else ""} \
      ~{if (_pgm_save) then "-D" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet        quiet mode, print no warnings and errors"
    _verbose_details: "--verbose      verbose mode, print processing details"
    _debug_information: "--debug        debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    _pstate_stringprocess: "--pstate       [f]ilename: string\\nprocess using presentation state file"
    _config_ilename: "--config       [f]ilename: string\\nprocess using settings from configuration file"
    _frame_integerprocess: "--frame        [f]rame: integer\\nprocess using image frame f (default: 1)"
    _pgm_save: "--pgm          save image as PGM (default)"
    dcm_file_in: "input DICOM image"
    bitmap_out: "output DICOM image or PGM bitmap"
  }
  output {
    File out_stdout = stdout()
  }
}