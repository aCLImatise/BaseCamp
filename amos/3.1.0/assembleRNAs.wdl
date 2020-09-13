version 1.0

task AssembleRNAs {
  command <<<
    assembleRNAs
  >>>
  output {
    File out_stdout = stdout()
  }
}