version 1.0

task RunWithLock {
  command <<<
    run_with_lock
  >>>
  output {
    File out_stdout = stdout()
  }
}