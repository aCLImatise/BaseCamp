version 1.0

task FoldFastapl {
  command <<<
    foldFasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}