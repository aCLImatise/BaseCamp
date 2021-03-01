version 1.0

task Dcmsign {
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
    Boolean? verify
    Boolean? null_passwd
    Boolean? pem_keys
    Boolean? der_keys
    Boolean? profile_none
    Boolean? tag
    Boolean? tag_file
    Boolean? format_new
    Boolean? format_old
    Boolean? length_undefined
    String dcm_file_in
    String dcm_file_out
    String use_specified_password
  }
  command <<<
    dcmsign \
      ~{dcm_file_in} \
      ~{dcm_file_out} \
      ~{use_specified_password} \
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
      ~{if (verify) then "--verify" else ""} \
      ~{if (null_passwd) then "--null-passwd" else ""} \
      ~{if (pem_keys) then "--pem-keys" else ""} \
      ~{if (der_keys) then "--der-keys" else ""} \
      ~{if (profile_none) then "--profile-none" else ""} \
      ~{if (tag) then "--tag" else ""} \
      ~{if (tag_file) then "--tag-file" else ""} \
      ~{if (format_new) then "--format-new" else ""} \
      ~{if (format_old) then "--format-old" else ""} \
      ~{if (length_undefined) then "--length-undefined" else ""}
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
    _readxferauto_use: "=   --read-xfer-auto       use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    verify: "verify all signatures (default)"
    null_passwd: "use empty string as password"
    pem_keys: "read keys/certificates as PEM file (default)"
    der_keys: "read keys/certificates as DER file"
    profile_none: "don't enforce any signature profile (default)"
    tag: "[t]ag: \\\"gggg,eeee\\\" or dictionary name\\nsign only specified tag\\n(this option can be specified multiple times)"
    tag_file: "[f]ilename: string\\nread list of tags from text file"
    format_new: "use correct DICOM signature format (default)"
    format_old: "use old (pre-3.5.4) DCMTK signature format,\\nnon-conformant if signature includes\\ncompressed pixel data"
    length_undefined: "write with undefined lengths"
    dcm_file_in: "DICOM input filename to be processed"
    dcm_file_out: "DICOM output filename"
    use_specified_password: "use specified password"
  }
  output {
    File out_stdout = stdout()
  }
}