version 1.0

task Anvicomputeani {
  command <<<
    anvi_compute_ani
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}