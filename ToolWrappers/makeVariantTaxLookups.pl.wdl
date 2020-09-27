version 1.0

task MakeVariantTaxLookupspl {
  command <<<
    makeVariantTaxLookups_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}