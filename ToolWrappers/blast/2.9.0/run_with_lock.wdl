version 1.0

task RunWithLock {
  command <<<
    run_with_lock
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}