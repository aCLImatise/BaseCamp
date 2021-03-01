version 1.0

task BpTaxid4speciespl {
  command <<<
    bp_taxid4species_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}