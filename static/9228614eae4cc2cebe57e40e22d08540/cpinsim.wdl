version 1.0

task Cpinsim {
  command <<<
    cpinsim
  >>>
  output {
    File out_stdout = stdout()
  }
}