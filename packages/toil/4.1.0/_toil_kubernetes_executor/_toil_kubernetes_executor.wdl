version 1.0

task ToilKubernetesExecutor {
  command <<<
    _toil_kubernetes_executor
  >>>
  output {
    File out_stdout = stdout()
  }
}