version 1.0

task TripailleAnalysis {
  command <<<
    tripaille analysis
  >>>
  output {
    File out_stdout = stdout()
  }
}