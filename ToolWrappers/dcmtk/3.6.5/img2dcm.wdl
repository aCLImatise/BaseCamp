version 1.0

task Img2dcm {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? input_format
    Boolean? dataset_from
    Boolean? study_from
    Boolean? series_from
    Boolean? instance_inc
    Boolean? disable_progr
    Boolean? disable_ext
    Boolean? insist_on_jfif
    Boolean? keep_appn
    Boolean? do_checks
    Boolean? no_checks
    Boolean? no_type_two_insert
    Boolean? no_type_one_invent
    Boolean? no_latin_one
    Boolean? key
    Boolean? sec_capture
    Boolean? new_sc
    Boolean? vl_photo
    Boolean? write_dataset
    Boolean? group_length_remove
    Boolean? length_undefined
    Boolean? padding_off
    String img_file_in
    String dcm_file_out
  }
  command <<<
    img2dcm \
      ~{img_file_in} \
      ~{dcm_file_out} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (input_format) then "--input-format" else ""} \
      ~{if (dataset_from) then "--dataset-from" else ""} \
      ~{if (study_from) then "--study-from" else ""} \
      ~{if (series_from) then "--series-from" else ""} \
      ~{if (instance_inc) then "--instance-inc" else ""} \
      ~{if (disable_progr) then "--disable-progr" else ""} \
      ~{if (disable_ext) then "--disable-ext" else ""} \
      ~{if (insist_on_jfif) then "--insist-on-jfif" else ""} \
      ~{if (keep_appn) then "--keep-appn" else ""} \
      ~{if (do_checks) then "--do-checks" else ""} \
      ~{if (no_checks) then "--no-checks" else ""} \
      ~{if (no_type_two_insert) then "--no-type2-insert" else ""} \
      ~{if (no_type_one_invent) then "--no-type1-invent" else ""} \
      ~{if (no_latin_one) then "--no-latin1" else ""} \
      ~{if (key) then "--key" else ""} \
      ~{if (sec_capture) then "--sec-capture" else ""} \
      ~{if (new_sc) then "--new-sc" else ""} \
      ~{if (vl_photo) then "--vl-photo" else ""} \
      ~{if (write_dataset) then "--write-dataset" else ""} \
      ~{if (group_length_remove) then "--group-length-remove" else ""} \
      ~{if (length_undefined) then "--length-undefined" else ""} \
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
    input_format: "[i]nput file format: string\\nsupported formats: JPEG (default), BMP"
    dataset_from: "[f]ilename: string\\nuse dataset from DICOM file f"
    study_from: "[f]ilename: string\\nread patient/study from DICOM file f"
    series_from: "[f]ilename: string\\nread patient/study/series from DICOM file f"
    instance_inc: "increase instance number read from DICOM file"
    disable_progr: "disable support for progressive JPEG"
    disable_ext: "disable support for extended sequential JPEG"
    insist_on_jfif: "insist on JFIF header"
    keep_appn: "keep APPn sections (except JFIF)"
    do_checks: "enable attribute validity checking (default)"
    no_checks: "disable attribute validity checking"
    no_type_two_insert: "do not insert missing type 2 attributes\\n(only with --do-checks)"
    no_type_one_invent: "do not invent missing type 1 attributes\\n(only with --do-checks)"
    no_latin_one: "keep 7-bit ASCII as standard character set"
    key: "[k]ey: gggg,eeee=\\\"str\\\", path or dict. name=\\\"str\\\"\\nadd further attribute"
    sec_capture: "write Secondary Capture SOP class (default)"
    new_sc: "write new Secondary Capture SOP classes"
    vl_photo: "write Visible Light Photographic SOP class"
    write_dataset: "write data set without file meta information"
    group_length_remove: "always write without group length elements"
    length_undefined: "write with undefined lengths"
    padding_off: "no padding (implicit if --write-dataset)"
    img_file_in: "image input filename"
    dcm_file_out: "DICOM output filename"
  }
  output {
    File out_stdout = stdout()
  }
}