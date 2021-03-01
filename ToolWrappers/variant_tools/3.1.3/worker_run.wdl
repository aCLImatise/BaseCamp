version 1.0

task WorkerRun {
  command <<<
    worker_run
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}