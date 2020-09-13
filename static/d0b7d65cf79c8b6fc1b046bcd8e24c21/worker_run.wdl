version 1.0

task WorkerRun {
  command <<<
    worker_run
  >>>
  output {
    File out_stdout = stdout()
  }
}