version 1.0

task GreedyFragmentTiling {
  command <<<
    greedyFragmentTiling
  >>>
  output {
    File out_stdout = stdout()
  }
}