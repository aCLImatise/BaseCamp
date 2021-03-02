version 1.0

task SegmentationfoldutilsExtractboxedsequences {
  input {
    Int? max_inner_dist
    Int? bp_extension
    String fast_a_input_file
    String fast_a_output_file
  }
  command <<<
    segmentation_fold_utils extract_boxed_sequences \
      ~{fast_a_input_file} \
      ~{fast_a_output_file} \
      ~{if defined(max_inner_dist) then ("--max-inner-dist " +  '"' + max_inner_dist + '"') else ""} \
      ~{if defined(bp_extension) then ("--bp-extension " +  '"' + bp_extension + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_inner_dist: "Maximal distance between the boxes\\n(default=250bp)"
    bp_extension: "Extend extracted sequences with this number of\\nbases (default: 10bp)"
    fast_a_input_file: "BED_INPUT_FILE"
    fast_a_output_file: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}