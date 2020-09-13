version 1.0

task TrinotateGTFLoaderpl {
  command <<<
    Trinotate_GTF_loader_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}