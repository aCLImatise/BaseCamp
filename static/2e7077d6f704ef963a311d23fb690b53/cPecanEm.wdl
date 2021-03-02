version 1.0

task CPecanEm {
  command <<<
    cPecanEm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}