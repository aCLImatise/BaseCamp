version 1.0

task TripaillePhylogeny {
  command <<<
    tripaille phylogeny
  >>>
  output {
    File out_stdout = stdout()
  }
}