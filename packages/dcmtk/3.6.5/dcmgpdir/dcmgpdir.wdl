version 1.0

task Dcmgpdir {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? keep_filenames
    Boolean? no_recurse
    Boolean? no_consistency_check
    Boolean? abort_in_consist_file
    Boolean? strict
    Boolean? no_xfer_check
    Boolean? replace
    Boolean? discard
    Boolean? create_backup
    Boolean? no_backup
    Boolean? disable_new_vr
    Boolean? group_length_remove
    Boolean? length_undefined
    String dcm_file_in
  }
  command <<<
    dcmgpdir \
      ~{dcm_file_in} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (keep_filenames) then "--keep-filenames" else ""} \
      ~{if (no_recurse) then "--no-recurse" else ""} \
      ~{if (no_consistency_check) then "--no-consistency-check" else ""} \
      ~{if (abort_in_consist_file) then "--abort-inconsist-file" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (no_xfer_check) then "--no-xfer-check" else ""} \
      ~{if (replace) then "--replace" else ""} \
      ~{if (discard) then "--discard" else ""} \
      ~{if (create_backup) then "--create-backup" else ""} \
      ~{if (no_backup) then "--no-backup" else ""} \
      ~{if (disable_new_vr) then "--disable-new-vr" else ""} \
      ~{if (group_length_remove) then "--group-length-remove" else ""} \
      ~{if (length_undefined) then "--length-undefined" else ""}
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
    keep_filenames: "expect filenames to be in DICOM format (def.)"
    no_recurse: "do not recurse within directories (default)"
    no_consistency_check: "do not check files for consistency"
    abort_in_consist_file: "abort on first inconsistent file"
    strict: "exit with error if DICOMDIR type 1 attributes\\nare missing in DICOM file (default)"
    no_xfer_check: "do not reject images with non-standard\\ntransfer syntax (just warn)"
    replace: "replace existing DICOMDIR (default)"
    discard: "do not write out DICOMDIR"
    create_backup: "create a backup of existing DICOMDIR (def.)"
    no_backup: "do not create a backup of existing DICOMDIR"
    disable_new_vr: "disable support for new VRs, convert to OB"
    group_length_remove: "write without group length elements (default)"
    length_undefined: "write with undefined lengths"
    dcm_file_in: "ref. DICOM file (or directory to be scanned)"
  }
  output {
    File out_stdout = stdout()
  }
}