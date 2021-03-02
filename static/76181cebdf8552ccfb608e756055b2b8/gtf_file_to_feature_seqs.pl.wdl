version 1.0

task GtfFileToFeatureSeqspl {
  command <<<
    gtf_file_to_feature_seqs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}