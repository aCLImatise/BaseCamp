version 1.0

task ProteinorthoCompareProteinorthoGraphspl {
  command <<<
    proteinortho_compareProteinorthoGraphs_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteinortho:6.0.29--hb0e25da_1"
  }
  output {
    File out_stdout = stdout()
  }
}