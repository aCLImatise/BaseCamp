version 1.0

task ProteinorthoSingletonspl {
  command <<<
    proteinortho_singletons_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}