version 1.0

task HmmsearchHmmfile {
  input {
    String seq_db
  }
  command <<<
    hmmsearch hmmfile \
      ~{seq_db}
  >>>
  parameter_meta {
    seq_db: ""
  }
  output {
    File out_stdout = stdout()
  }
}