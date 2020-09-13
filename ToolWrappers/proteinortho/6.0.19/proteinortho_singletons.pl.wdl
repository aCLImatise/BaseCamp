version 1.0

task ProteinorthoSingletonspl {
  command <<<
    proteinortho_singletons_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}