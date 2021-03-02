version 1.0

task FoldFastapl {
  command <<<
    foldFasta_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}