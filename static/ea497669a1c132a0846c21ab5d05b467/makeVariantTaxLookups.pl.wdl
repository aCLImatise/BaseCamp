version 1.0

task MakeVariantTaxLookupspl {
  command <<<
    makeVariantTaxLookups_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}