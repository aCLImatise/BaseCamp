version 1.0

task TauFastapl {
  command <<<
    TauFasta_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}