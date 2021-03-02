version 1.0

task TrinotateRNAMMERLoaderpl {
  command <<<
    Trinotate_RNAMMER_loader_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}