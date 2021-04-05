version 1.0

task ToilMesosExecutor {
  command <<<
    _toil_mesos_executor
  >>>
  runtime {
    docker: "quay.io/biocontainers/toil:5.3.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}