version 1.0

task TripailleJob {
  command <<<
    tripaille job
  >>>
  output {
    File out_stdout = stdout()
  }
}