version 1.0

task CPecanAlign {
  command <<<
    cPecanAlign
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}