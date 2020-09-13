version 1.0

task PhmmerSeqdb {
  input {
    Boolean? options
    String p_hmmer
    String seq_file
    String seq_db
  }
  command <<<
    phmmer seqdb \
      ~{p_hmmer} \
      ~{seq_file} \
      ~{seq_db} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
    p_hmmer: ""
    seq_file: ""
    seq_db: ""
  }
  output {
    File out_stdout = stdout()
  }
}