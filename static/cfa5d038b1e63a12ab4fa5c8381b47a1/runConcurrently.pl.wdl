version 1.0

task RunConcurrentlypl {
  command <<<
    runConcurrently_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}