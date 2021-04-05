version 1.0

task Pm4ngsrnaseqdemo {
  command <<<
    pm4ngs_rnaseq_demo
  >>>
  runtime {
    docker: "quay.io/biocontainers/pm4ngs:0.0.6--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}