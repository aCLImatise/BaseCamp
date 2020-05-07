version 1.0

task TaxonomyFilterRefseq {
  input {
    String taxTaxPrefix
    String? optionsOptions
    String? inputInputFastA
    String? taxonomyTaxonomyDir
    String? ancestorAncestorName
    String? outputOutputFastA
  }
  command <<<
    taxonomy_filter_refseq \
      ~{optionsOptions} \
      ~{if defined(taxTaxPrefix) then ("--tax_prefix " +  '"' + taxTaxPrefix + '"') else ""} \
      ~{inputInputFastA} \
      ~{taxonomyTaxonomyDir} \
      ~{ancestorAncestorName} \
      ~{outputOutputFastA}
  >>>
}