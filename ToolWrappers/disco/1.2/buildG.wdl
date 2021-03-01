version 1.0

task BuildG {
  command <<<
    buildG
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}