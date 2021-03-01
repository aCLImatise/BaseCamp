version 1.0

task Anvicomputeani {
  command <<<
    anvi_compute_ani
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}