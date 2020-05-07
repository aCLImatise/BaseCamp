version 1.0

task OPopulateDatasetsFromVAMPSDownload {
  input {
    String taxTaxOn
    String outputOutput
    String? fastFastA
  }
  command <<<
    o-populate-datasets-from-VAMPS-download \
      ~{fastFastA} \
      ~{if defined(taxTaxOn) then ("--taxon " +  '"' + taxTaxOn + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}