version 1.0

task TrinotateSIGNALPLoaderpl {
  command <<<
    Trinotate_SIGNALP_loader_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}