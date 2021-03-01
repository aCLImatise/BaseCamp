version 1.0

task TrinotateBLASTLoaderpl {
  command <<<
    Trinotate_BLAST_loader_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}