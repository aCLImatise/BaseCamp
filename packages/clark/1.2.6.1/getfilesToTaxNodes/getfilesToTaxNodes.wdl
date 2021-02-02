version 1.0

task GetfilesToTaxNodes {
  command <<<
    getfilesToTaxNodes
  >>>
  output {
    File out_stdout = stdout()
  }
}