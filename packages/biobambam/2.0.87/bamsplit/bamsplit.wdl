version 1.0

task Bamsplit {
  command <<<
    bamsplit
  >>>
  output {
    File out_stdout = stdout()
  }
}