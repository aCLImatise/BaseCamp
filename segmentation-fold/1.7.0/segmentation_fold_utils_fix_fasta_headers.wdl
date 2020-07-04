version 1.0

task SegmentationFoldUtilsFixFastaHeaders {
  input {
    String fast_a_input_file
  }
  command <<<
    segmentation-fold-utils fix-fasta-headers \
      ~{fast_a_input_file}
  >>>
  parameter_meta {
    fast_a_input_file: ""
  }
}