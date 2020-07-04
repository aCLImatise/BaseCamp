version 1.0

task BRS {
  input {
    String seq_file
  }
  command <<<
    BRS \
      ~{seq_file}
  >>>
  parameter_meta {
    seq_file: ""
  }
}