version 1.0

task IgorcomputePgen {
  command <<<
    igor_compute_pgen
  >>>
  output {
    File out_stdout = stdout()
  }
}