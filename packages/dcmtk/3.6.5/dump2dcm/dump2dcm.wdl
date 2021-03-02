version 1.0

task Dump2dcm {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? ignore_meta_info
    Boolean? dont_overwrite_uids
    Boolean? write_dataset
    Boolean? stop_on_error
    Boolean? disable_new_vr
    Boolean? group_length_remove
    Boolean? length_undefined
    Boolean? _paddingretain_change
    Boolean? padding_off
    String dumpfile_in
    String dcm_file_out
  }
  command <<<
    dump2dcm \
      ~{dumpfile_in} \
      ~{dcm_file_out} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (ignore_meta_info) then "--ignore-meta-info" else ""} \
      ~{if (dont_overwrite_uids) then "--dont-overwrite-uids" else ""} \
      ~{if (write_dataset) then "--write-dataset" else ""} \
      ~{if (stop_on_error) then "--stop-on-error" else ""} \
      ~{if (disable_new_vr) then "--disable-new-vr" else ""} \
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
    ignore_meta_info: "ignore file meta information"
    dont_overwrite_uids: "do not overwrite existing UIDs (default)"
    write_dataset: "write data set without file meta information"
    stop_on_error: "do not write if dump is damaged (default)"
    disable_new_vr: "disable support for new VRs, convert to OB"
    group_length_remove: "always write without group length elements"
    length_undefined: "write with undefined lengths"
    _paddingretain_change: "=  --padding-retain       do not change padding (default)"
    padding_off: "no padding (implicit if --write-dataset)"
    dumpfile_in: "dump input filename"
    dcm_file_out: "DICOM output filename"
  }
  output {
    File out_stdout = stdout()
  }
}