version 1.0

task GenericWrapper {
  command <<<
    GenericWrapper
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}