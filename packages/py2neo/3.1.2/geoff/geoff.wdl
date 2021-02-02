version 1.0

task Geoff {
  command <<<
    geoff
  >>>
  output {
    File out_stdout = stdout()
  }
}