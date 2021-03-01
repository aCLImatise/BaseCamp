version 1.0

task BigWigCorrelate {
  command <<<
    bigWigCorrelate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}