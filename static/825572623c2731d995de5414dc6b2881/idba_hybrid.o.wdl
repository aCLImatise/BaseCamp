version 1.0

task IdbaHybrido {
  command <<<
    idba_hybrid_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}