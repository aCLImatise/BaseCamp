version 1.0

task Pm4ngschipseqdemo {
  command <<<
    pm4ngs_chipseq_demo
  >>>
  runtime {
    docker: "quay.io/biocontainers/pm4ngs:0.0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}