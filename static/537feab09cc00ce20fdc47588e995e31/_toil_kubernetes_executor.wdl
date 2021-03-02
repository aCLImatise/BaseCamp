version 1.0

task ToilKubernetesExecutor {
  command <<<
    _toil_kubernetes_executor
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}