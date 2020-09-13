version 1.0

task FfBignet {
  input {
    String link_definition
  }
  command <<<
    ff_bignet \
      ~{link_definition}
  >>>
  parameter_meta {
    link_definition: ""
  }
  output {
    File out_stdout = stdout()
  }
}