version 1.0

task TrinotatePFAMLoaderpl {
  command <<<
    Trinotate_PFAM_loader_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}