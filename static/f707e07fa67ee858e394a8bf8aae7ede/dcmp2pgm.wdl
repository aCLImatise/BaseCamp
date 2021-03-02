version 1.0

task Dcmp2pgm {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? p_state
    Boolean? config
    Boolean? frame
    Boolean? pgm
    String dcm_file_in
    String bitmap_out
  }
  command <<<
    dcmp2pgm \
      ~{dcm_file_in} \
      ~{bitmap_out} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (p_state) then "--pstate" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (frame) then "--frame" else ""} \
      ~{if (pgm) then "--pgm" else ""}
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
    p_state: "[f]ilename: string\\nprocess using presentation state file"
    config: "[f]ilename: string\\nprocess using settings from configuration file"
    frame: "[f]rame: integer\\nprocess using image frame f (default: 1)"
    pgm: "save image as PGM (default)"
    dcm_file_in: "input DICOM image"
    bitmap_out: "output DICOM image or PGM bitmap"
  }
  output {
    File out_stdout = stdout()
  }
}