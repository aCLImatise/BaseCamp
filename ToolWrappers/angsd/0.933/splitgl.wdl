version 1.0

task Splitgl {
  command <<<
    splitgl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}