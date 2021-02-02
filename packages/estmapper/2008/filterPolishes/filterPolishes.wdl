version 1.0

task FilterPolishes {
  command <<<
    filterPolishes
  >>>
  output {
    File out_stdout = stdout()
  }
}