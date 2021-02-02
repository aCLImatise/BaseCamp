version 1.0

task NhmmerTargetseqfile {
  input {
    String n_hmmer
    String query_hmm_file_vertical_line_align_file_vertical_line_seq_file
    String target_seq_file
  }
  command <<<
    nhmmer target_seqfile \
      ~{n_hmmer} \
      ~{query_hmm_file_vertical_line_align_file_vertical_line_seq_file} \
      ~{target_seq_file}
  >>>
  parameter_meta {
    n_hmmer: ""
    query_hmm_file_vertical_line_align_file_vertical_line_seq_file: ""
    target_seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}