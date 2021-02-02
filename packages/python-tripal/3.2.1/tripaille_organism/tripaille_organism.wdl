version 1.0

task TripailleOrganism {
  command <<<
    tripaille organism
  >>>
  output {
    File out_stdout = stdout()
  }
}