version 1.0

task TrinotateRNAMMERLoaderpl {
  command <<<
    Trinotate_RNAMMER_loader_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}