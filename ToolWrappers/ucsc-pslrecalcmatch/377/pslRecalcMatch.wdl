version 1.0

task PslRecalcMatch {
  command <<<
    pslRecalcMatch
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}