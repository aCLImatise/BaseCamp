version 1.0

task ToilWorker {
  command <<<
    _toil_worker
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}