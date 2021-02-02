version 1.0

task Stats {
  command <<<
    stats
  >>>
  output {
    File out_stdout = stdout()
  }
}