version 1.0

task BigWigCorrelate {
  command <<<
    bigWigCorrelate
  >>>
  output {
    File out_stdout = stdout()
  }
}