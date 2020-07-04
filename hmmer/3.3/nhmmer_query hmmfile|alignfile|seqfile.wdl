version 1.0

task NhmmerQuery hmmfile|alignfile|seqfile {
  input {
    String target_seq_file
  }
  command <<<
    nhmmer query hmmfile|alignfile|seqfile \
      ~{target_seq_file}
  >>>
  parameter_meta {
    target_seq_file: ""
  }
}