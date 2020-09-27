version 1.0

task KmerStreamEstimatepy {
  command <<<
    KmerStreamEstimate_py
  >>>
  output {
    File out_stdout = stdout()
  }
}