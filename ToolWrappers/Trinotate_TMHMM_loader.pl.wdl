version 1.0

task TrinotateTMHMMLoaderpl {
  command <<<
    Trinotate_TMHMM_loader_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}