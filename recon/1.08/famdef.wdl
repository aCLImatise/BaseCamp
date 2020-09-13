version 1.0

task Famdef {
  input {
    String seq_list
  }
  command <<<
    famdef \
      ~{seq_list}
  >>>
  parameter_meta {
    seq_list: ""
  }
  output {
    File out_stdout = stdout()
  }
}