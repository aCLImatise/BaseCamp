version 1.0

task ProteinorthoCompareProteinorthoGraphspl {
  command <<<
    proteinortho_compareProteinorthoGraphs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}