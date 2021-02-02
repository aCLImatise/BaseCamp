version 1.0

task ReadTaxonpl {
  command <<<
    ReadTaxon_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}