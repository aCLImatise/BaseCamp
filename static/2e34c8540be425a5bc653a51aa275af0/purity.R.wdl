version 1.0

task PurityR {
  command <<<
    purity_R
  >>>
  output {
    File out_stdout = stdout()
  }
}