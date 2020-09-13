version 1.0

task SelectTaxa {
  command <<<
    select_taxa
  >>>
  output {
    File out_stdout = stdout()
  }
}