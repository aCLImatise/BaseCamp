version 1.0

task CruxGeneratepeptides {
  command <<<
    crux generate_peptides
  >>>
  output {
    File out_stdout = stdout()
  }
}