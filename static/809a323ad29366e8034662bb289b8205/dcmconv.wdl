version 1.0

task Dcmconv {
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
    Boolean? ignore_meta_length
    Boolean? ignore_explicit_vr
    Boolean? assume_implicit
    Boolean? disable_cp_two_four_six
    Boolean? retain_un
    Boolean? maxlength_dict
    Boolean? use_delim_items
    Boolean? illegal_o_bow_rej
    Boolean? illegal_voi_rej
    Boolean? abort_expl_pix_data
    Boolean? handle_parse_errors
    Boolean? disable_correction
    Boolean? transliterate
    Boolean? discard_illegal
    Boolean? no_invalid_groups
    Boolean? write_dataset
    Boolean? disable_new_vr
    Boolean? group_length_remove
    Boolean? length_undefined
    Boolean? abort_oversized
    Boolean? _paddingretain_change
    Boolean? padding_off
    String dcm_file_in
    String dcm_file_out
  }
  command <<<
    dcmconv \
      ~{dcm_file_in} \
      ~{dcm_file_out} \
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
      ~{if (ignore_meta_length) then "--ignore-meta-length" else ""} \
      ~{if (ignore_explicit_vr) then "--ignore-explicit-vr" else ""} \
      ~{if (assume_implicit) then "--assume-implicit" else ""} \
      ~{if (disable_cp_two_four_six) then "--disable-cp246" else ""} \
      ~{if (retain_un) then "--retain-un" else ""} \
      ~{if (maxlength_dict) then "--maxlength-dict" else ""} \
      ~{if (use_delim_items) then "--use-delim-items" else ""} \
      ~{if (illegal_o_bow_rej) then "--illegal-obow-rej" else ""} \
      ~{if (illegal_voi_rej) then "--illegal-voi-rej" else ""} \
      ~{if (abort_expl_pix_data) then "--abort-expl-pixdata" else ""} \
      ~{if (handle_parse_errors) then "--handle-parse-errors" else ""} \
      ~{if (disable_correction) then "--disable-correction" else ""} \
      ~{if (transliterate) then "--transliterate" else ""} \
      ~{if (discard_illegal) then "--discard-illegal" else ""} \
      ~{if (no_invalid_groups) then "--no-invalid-groups" else ""} \
      ~{if (write_dataset) then "--write-dataset" else ""} \
      ~{if (disable_new_vr) then "--disable-new-vr" else ""} \
      ~{if (group_length_remove) then "--group-length-remove" else ""} \
      ~{if (length_undefined) then "--length-undefined" else ""} \
      ~{if (abort_oversized) then "--abort-oversized" else ""} \
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
    read_dataset: "read data set without file meta information"
    _readxferauto_use: "=  --read-xfer-auto       use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    ignore_meta_length: "ignore file meta information group length"
    ignore_explicit_vr: "ignore explicit VR (prefer data dictionary)"
    assume_implicit: "try to read with implicit VR little endian TS"
    disable_cp_two_four_six: "read undefined len UN as explicit VR"
    retain_un: "retain elements as UN (default)"
    maxlength_dict: "read as defined in dictionary (default)"
    use_delim_items: "use delimitation items from dataset (default)"
    illegal_o_bow_rej: "reject dataset with illegal element (default)"
    illegal_voi_rej: "reject dataset with illegal VOI LUT (default)"
    abort_expl_pix_data: "abort on explicit length pixel data (default)"
    handle_parse_errors: "handle parse errors and stop parsing (default)"
    disable_correction: "disable automatic data correction"
    transliterate: "try to approximate characters that cannot be\\nrepresented through similar looking characters"
    discard_illegal: "discard characters that cannot be represented\\nin destination character set"
    no_invalid_groups: "remove elements with invalid group number"
    write_dataset: "write data set without file meta information"
    disable_new_vr: "disable support for new VRs, convert to OB"
    group_length_remove: "always write without group length elements"
    length_undefined: "write with undefined lengths"
    abort_oversized: "abort on oversized explicit sequences/items"
    _paddingretain_change: "=  --padding-retain       do not change padding\\n(default if not --write-dataset)"
    padding_off: "no padding (implicit if --write-dataset)"
    dcm_file_in: "DICOM input filename to be converted"
    dcm_file_out: "DICOM output filename"
  }
  output {
    File out_stdout = stdout()
  }
}