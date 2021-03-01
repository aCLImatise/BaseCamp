version 1.0

task SelectTaxa {
  command <<<
    select_taxa
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}