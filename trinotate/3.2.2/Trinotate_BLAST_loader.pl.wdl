version 1.0

task TrinotateBLASTLoaderpl {
  command <<<
    Trinotate_BLAST_loader_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}