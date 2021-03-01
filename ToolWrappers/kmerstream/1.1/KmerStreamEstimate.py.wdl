version 1.0

task KmerStreamEstimatepy {
  command <<<
    KmerStreamEstimate_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}