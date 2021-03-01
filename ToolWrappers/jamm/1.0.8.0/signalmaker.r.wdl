version 1.0

task Signalmakerr {
  command <<<
    signalmaker_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}