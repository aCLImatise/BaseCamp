version 1.0

task ToilKubernetesExecutor {
  command <<<
    _toil_kubernetes_executor
  >>>
  runtime {
    docker: "quay.io/biocontainers/toil:5.2.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}