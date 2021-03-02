version 1.0

task TrinotateGTFLoaderpl {
  command <<<
    Trinotate_GTF_loader_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}