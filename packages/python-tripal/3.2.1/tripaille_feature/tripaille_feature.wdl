version 1.0

task TripailleFeature {
  command <<<
    tripaille feature
  >>>
  output {
    File out_stdout = stdout()
  }
}