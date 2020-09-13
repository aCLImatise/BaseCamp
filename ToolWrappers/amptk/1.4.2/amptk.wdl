version 1.0

task Amptk {
  command <<<
    amptk
  >>>
  output {
    File out_stdout = stdout()
  }
}