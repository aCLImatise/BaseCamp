version 1.0

task Pdf2dcm {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? annotation_no
    Boolean? key
    Boolean? group_length_remove
    Boolean? length_undefined
    Boolean? _paddingretain_change
    Boolean? padding_off
    String pdf_file_in
    String dcm_file_out
  }
  command <<<
    pdf2dcm \
      ~{pdf_file_in} \
      ~{dcm_file_out} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (annotation_no) then "--annotation-no" else ""} \
      ~{if (key) then "--key" else ""} \
      ~{if (group_length_remove) then "--group-length-remove" else ""} \
      ~{if (length_undefined) then "--length-undefined" else ""} \
      ~{if (_paddingretain_change) then "-p" else ""} \
      ~{if (padding_off) then "--padding-off" else ""}
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
    annotation_no: "document does not contain patient identif. data"
    key: "[k]ey: gggg,eeee=\\\"str\\\", path or dict. name=\\\"str\\\"\\nadd further attribute"
    group_length_remove: "always write without group length elements"
    length_undefined: "write with undefined lengths"
    _paddingretain_change: "=  --padding-retain       do not change padding (default)"
    padding_off: "no padding (implicit if --write-dataset)"
    pdf_file_in: "PDF input filename to be converted"
    dcm_file_out: "DICOM output filename"
  }
  output {
    File out_stdout = stdout()
  }
}