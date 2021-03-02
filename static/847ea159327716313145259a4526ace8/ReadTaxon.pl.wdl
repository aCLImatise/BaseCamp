version 1.0

task ReadTaxonpl {
  command <<<
    ReadTaxon_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}