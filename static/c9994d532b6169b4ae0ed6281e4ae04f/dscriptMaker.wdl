version 1.0

task DscriptMaker {
  command <<<
    dscriptMaker
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}