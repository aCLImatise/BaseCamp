version 1.0

task NhmmerQueryhmmfilealignfileseqfile {
  input {
    String target_seq_file
  }
  command <<<
    nhmmer query_hmmfile_alignfile_seqfile \
      ~{target_seq_file}
  >>>
  parameter_meta {
    target_seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}