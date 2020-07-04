version 1.0

task HmmscanSeqfile {
  input {
    Boolean? options
    String hmms_can
    String hmm_db
    String seq_file
  }
  command <<<
    hmmscan seqfile \
      ~{hmms_can} \
      ~{hmm_db} \
      ~{seq_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    hmms_can: ""
    hmm_db: ""
    seq_file: ""
  }
}