version 1.0

task IgorcomputePgen {
  command <<<
    igor_compute_pgen
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}