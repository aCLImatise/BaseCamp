version 1.0

task IdbaHybrido {
  command <<<
    idba_hybrid_o
  >>>
  output {
    File out_stdout = stdout()
  }
}