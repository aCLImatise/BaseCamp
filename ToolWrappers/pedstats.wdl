version 1.0

task Pedstats {
  command <<<
    pedstats
  >>>
  output {
    File out_stdout = stdout()
  }
}