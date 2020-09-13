version 1.0

task GetAccssnTaxID {
  command <<<
    getAccssnTaxID
  >>>
  output {
    File out_stdout = stdout()
  }
}