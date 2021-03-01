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
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
    nh_mms_can: ""
    hmm_db: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}