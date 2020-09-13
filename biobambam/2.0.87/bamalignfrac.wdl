version 1.0

task Bamalignfrac {
  command <<<
    bamalignfrac
  >>>
  output {
    File out_stdout = stdout()
  }
}