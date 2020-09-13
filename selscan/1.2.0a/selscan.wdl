version 1.0

task Selscan {
  command <<<
    selscan
  >>>
  output {
    File out_stdout = stdout()
  }
}