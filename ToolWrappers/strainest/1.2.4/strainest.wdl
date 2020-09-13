version 1.0

task Strainest {
  command <<<
    strainest
  >>>
  output {
    File out_stdout = stdout()
  }
}