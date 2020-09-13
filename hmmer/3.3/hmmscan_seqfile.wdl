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
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
    hmms_can: ""
    hmm_db: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}