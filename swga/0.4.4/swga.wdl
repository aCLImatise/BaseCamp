version 1.0

task Swga {
  input {
    String usage
  }
  command <<<
    swga \
      ~{usage}
  >>>
  parameter_meta {
    usage: ""
  }
  output {
    File out_stdout = stdout()
  }
}