version 1.0

task Dcm2json {
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
    Boolean? compact_code
    String dcm_file_in
    String json_file_out
  }
  command <<<
    dcm2json \
      ~{dcm_file_in} \
      ~{json_file_out} \
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
      ~{if (compact_code) then "--compact-code" else ""}
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
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    read_dataset: "read data set without file meta information"
    _readxferauto_use: "=  --read-xfer-auto      use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    compact_code: "print only required characters"
    dcm_file_in: "DICOM input filename to be converted"
    json_file_out: "JSON output filename (default: stdout)"
  }
  output {
    File out_stdout = stdout()
  }
}