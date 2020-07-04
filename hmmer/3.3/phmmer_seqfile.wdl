version 1.0

task PhmmerSeqfile {
  input {
    Boolean? options
    String seq_db
  }
  command <<<
    phmmer seqfile \
      ~{seq_db} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    seq_db: ""
  }
}