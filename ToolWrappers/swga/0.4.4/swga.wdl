version 1.0

task Swga {
  input {
    String usage
  }
  command <<<
    swga \
      ~{usage}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    usage: ""
  }
  output {
    File out_stdout = stdout()
  }
}