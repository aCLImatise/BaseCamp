version 1.0

task TdBignet {
  input {
    String link_definition
  }
  command <<<
    td_bignet \
      ~{link_definition}
  >>>
  parameter_meta {
    link_definition: ""
  }
  output {
    File out_stdout = stdout()
  }
}