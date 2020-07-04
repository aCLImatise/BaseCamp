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
  parameter_meta {
    hmm_search: ""
    hmm_file: ""
    seq_db: ""
  }
}