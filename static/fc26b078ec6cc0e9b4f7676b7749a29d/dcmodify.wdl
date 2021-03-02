version 1.0

task Dcmodify {
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
    Boolean? disable_correction
    Boolean? backup
    Boolean? no_backup
    Boolean? insert
    Boolean? insert_from_file
    Boolean? no_reserv_check
    Boolean? modify
    Boolean? modify_from_file
    Boolean? modify_all
    Boolean? erase
    Boolean? erase_all
    Boolean? erase_private
    Boolean? gen_stud_uid
    Boolean? gen_ser_uid
    Boolean? gen_inst_uid
    Boolean? no_meta_uid
    Boolean? ignore_errors
    Boolean? ignore_missing_tags
    Boolean? ignore_un_values
    Boolean? write_dataset
    Boolean? disable_new_vr
    Boolean? group_length_remove
    Boolean? length_undefined
    Boolean? _paddingretain_change
    Boolean? padding_off
    String dcm_file_in
  }
  command <<<
    dcmodify \
      ~{dcm_file_in} \
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
      ~{if (disable_correction) then "--disable-correction" else ""} \
      ~{if (backup) then "--backup" else ""} \
      ~{if (no_backup) then "--no-backup" else ""} \
      ~{if (insert) then "--insert" else ""} \
      ~{if (insert_from_file) then "--insert-from-file" else ""} \
      ~{if (no_reserv_check) then "--no-reserv-check" else ""} \
      ~{if (modify) then "--modify" else ""} \
      ~{if (modify_from_file) then "--modify-from-file" else ""} \
      ~{if (modify_all) then "--modify-all" else ""} \
      ~{if (erase) then "--erase" else ""} \
      ~{if (erase_all) then "--erase-all" else ""} \
      ~{if (erase_private) then "--erase-private" else ""} \
      ~{if (gen_stud_uid) then "--gen-stud-uid" else ""} \
      ~{if (gen_ser_uid) then "--gen-ser-uid" else ""} \
      ~{if (gen_inst_uid) then "--gen-inst-uid" else ""} \
      ~{if (no_meta_uid) then "--no-meta-uid" else ""} \
      ~{if (ignore_errors) then "--ignore-errors" else ""} \
      ~{if (ignore_missing_tags) then "--ignore-missing-tags" else ""} \
      ~{if (ignore_un_values) then "--ignore-un-values" else ""} \
      ~{if (write_dataset) then "--write-dataset" else ""} \
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
    read_dataset: "read data set without file meta information"
    _readxferauto_use: "=   --read-xfer-auto       use TS recognition (default)"
    read_xfer_detect: "ignore TS specified in the file meta header"
    read_xfer_little: "read with explicit VR little endian TS"
    read_xfer_big: "read with explicit VR big endian TS"
    read_xfer_implicit: "read with implicit VR little endian TS"
    disable_correction: "disable automatic data correction"
    backup: "backup files before modifying (default)"
    no_backup: "don't backup files (DANGEROUS)"
    insert: "\\\"[t]ag-path=[v]alue\\\"\\ninsert (or overwrite) path at position t\\nwith value v"
    insert_from_file: "\\\"[t]ag-path=[f]ilename\\\"\\ninsert (or overwrite) path at position t\\nwith value from file f"
    no_reserv_check: "do not check private reservations\\nwhen inserting private tags"
    modify: "\\\"[t]ag-path=[v]alue\\\"\\nmodify tag at position t to value v"
    modify_from_file: "\\\"[t]ag-path=[f]ilename\\\"\\nmodify tag at position t to value from file f"
    modify_all: "\\\"[t]ag=[v]alue\\\"\\nmodify ALL matching tags t in file to value v"
    erase: "\\\"[t]ag-path\\\"\\nerase tag/item at position t"
    erase_all: "\\\"[t]ag\\\"\\nerase ALL matching tags t in file"
    erase_private: "erase ALL private data from file"
    gen_stud_uid: "generate new Study Instance UID"
    gen_ser_uid: "generate new Series Instance UID"
    gen_inst_uid: "generate new SOP Instance UID"
    no_meta_uid: "do not update metaheader UIDs if related\\nUIDs in the dataset are modified"
    ignore_errors: "continue with file, if modify error occurs"
    ignore_missing_tags: "treat 'tag not found' as success\\nwhen modifying or erasing in datasets"
    ignore_un_values: "do not try writing any values to elements\\nhaving a VR of UN"
    write_dataset: "write data set without file meta information"
    disable_new_vr: "disable support for new VRs, convert to OB"
    group_length_remove: "always write without group length elements"
    length_undefined: "write with undefined lengths"
    _paddingretain_change: "=   --padding-retain       do not change padding\\n(default if not --write-dataset)"
    padding_off: "no padding (implicit if --write-dataset)"
    dcm_file_in: "DICOM input filename to be modified"
  }
  output {
    File out_stdout = stdout()
  }
}