version 1.0

task Acdc {
  command <<<
    acdc
  >>>
  output {
    File out_stdout = stdout()
  }
}