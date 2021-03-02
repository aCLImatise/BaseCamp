version 1.0

task SegmentationfoldutilsFixfastaheaders {
  input {
    String fast_a_output_file
  }
  command <<<
    segmentation_fold_utils fix_fasta_headers \
      ~{fast_a_output_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a_output_file: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}