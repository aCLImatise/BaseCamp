version 1.0

task Dcm2pdf {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? read_dataset
    Boolean? _readxferauto_use
    Boolean? read_xfer_detect
    Boolean? read_xfer_little
    Boolean? read_xfer_big
    Boolean? read_xfer_implicit
    Boolean? disable_cp_two_four_six
    Boolean? retain_un
    Boolean? disable_correction
    Boolean? exec
    String dcm_file_in
    String pdf_file_out
  }
  command <<<
    dcm2pdf \
      ~{dcm_file_in} \
      ~{pdf_file_out} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (read_dataset) then "--read-dataset" else ""} \
      ~{if (_readxferauto_use) then "-t" else ""} \
      ~{if (read_xfer_detect) then "--read-xfer-detect" else ""} \
      ~{if (read_xfer_little) then "--read-xfer-little" else ""} \
      ~{if (read_xfer_big) then "--read-xfer-big" else ""} \
      ~{if (read_xfer_implicit) then "--read-xfer-implicit" else ""} \
      ~{if (disable_cp_two_four_six) then "--disable-cp246" else ""} \
      ~{if (retain_un) then "--retain-un" else ""} \
      ~{if (disable_correction) then "--disable-correction" else ""} \
      ~{if (exec) then "--exec" else ""}
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
    read_dataset: "read data set without file meta information"
    _readxferauto_use: "=  --read-xfer-auto      use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    disable_cp_two_four_six: "read undefined len UN as explicit VR"
    retain_un: "retain elements as UN (default)"
    disable_correction: "disable automatic data correction"
    exec: "[c]ommand: string\\nexecute command c after PDF extraction\\n"
    dcm_file_in: "DICOM input filename"
    pdf_file_out: "PDF output filename"
  }
  output {
    File out_stdout = stdout()
  }
}