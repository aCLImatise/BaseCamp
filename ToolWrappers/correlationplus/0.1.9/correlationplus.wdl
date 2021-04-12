version 1.0

task Correlationplus {
  command <<<
    correlationplus
  >>>
  runtime {
    docker: "quay.io/biocontainers/correlationplus:0.1.9--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}