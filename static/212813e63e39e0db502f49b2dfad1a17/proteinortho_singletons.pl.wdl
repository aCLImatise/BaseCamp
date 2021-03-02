version 1.0

task ProteinorthoSingletonspl {
  command <<<
    proteinortho_singletons_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteinortho:6.0.28--hfd40d39_0"
  }
  output {
    File out_stdout = stdout()
  }
}