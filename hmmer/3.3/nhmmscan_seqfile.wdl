version 1.0

task NhmmscanSeqfile {
  input {
    Boolean? options
    String nh_mms_can
    String hmm_db
    String seq_file
  }
  command <<<
    nhmmscan seqfile \
      ~{nh_mms_can} \
      ~{hmm_db} \
      ~{seq_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    nh_mms_can: ""
    hmm_db: ""
    seq_file: ""
  }
}