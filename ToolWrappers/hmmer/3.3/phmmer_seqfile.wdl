version 1.0

task PhmmerSeqfile {
  input {
    Boolean? options
    String seq_db
  }
  command <<<
    phmmer seqfile \
      ~{seq_db} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
    seq_db: ""
  }
  output {
    File out_stdout = stdout()
  }
}