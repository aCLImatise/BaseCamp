version 1.0

task SegmentationfoldutilsFilterannotatedentries {
  input {
    File? regex
    String dbn_input_file
    String bn_output_file_non_ove
  }
  command <<<
    segmentation_fold_utils filter_annotated_entries \
      ~{dbn_input_file} \
      ~{bn_output_file_non_ove} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    regex: "Regex to capture the targeted location in DBN file\\n(default: '>.*?(chr[^:]):([0-9]+)-([0-9]+)' )"
    dbn_input_file: "BED_INPUT_FILE DBN_OUT"
    bn_output_file_non_ove: "RLAPPING"
  }
  output {
    File out_stdout = stdout()
  }
}