version 1.0

task TrinotateSIGNALPLoaderpl {
  command <<<
    Trinotate_SIGNALP_loader_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}