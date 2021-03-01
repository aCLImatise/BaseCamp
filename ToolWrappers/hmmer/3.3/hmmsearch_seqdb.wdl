version 1.0

task HmmsearchSeqdb {
  input {
    String hmm_search
    String hmm_file
    String seq_db
  }
  command <<<
    hmmsearch seqdb \
      ~{hmm_search} \
      ~{hmm_file} \
      ~{seq_db}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hmm_search: ""
    hmm_file: ""
    seq_db: ""
  }
  output {
    File out_stdout = stdout()
  }
}