version 1.0

task Memtime {
  command <<<
    memtime
  >>>
  output {
    File out_stdout = stdout()
  }
}