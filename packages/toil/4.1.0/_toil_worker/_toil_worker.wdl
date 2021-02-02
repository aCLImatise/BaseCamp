version 1.0

task ToilWorker {
  command <<<
    _toil_worker
  >>>
  output {
    File out_stdout = stdout()
  }
}