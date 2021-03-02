version 1.0

task TrinotateSeqLoaderpl {
  command <<<
    TrinotateSeqLoader_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}