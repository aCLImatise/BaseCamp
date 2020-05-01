version 1.0

task TaxonomyFilterFastq {
  input {
    Boolean outputOutputDir
    Boolean centrifugeCentrifuge
    Boolean kraken2Kraken2
    String ancestorAncestorTaxid
    String taxTaxDir
    String taxTaxPrefix
    String taxTaxReportFilename
  }
  command <<<
    taxonomy_filter_fastq \
      ~{true="--output_dir" false="" outputOutputDir} \
      ~{true="--centrifuge" false="" centrifugeCentrifuge} \
      ~{true="--kraken2" false="" kraken2Kraken2} \
      ~{if defined(ancestorAncestorTaxid) then ("--ancestor_taxid " +  '"' + ancestorAncestorTaxid + '"') else ""} \
      ~{if defined(taxTaxDir) then ("--taxdir " +  '"' + taxTaxDir + '"') else ""} \
      ~{if defined(taxTaxPrefix) then ("--tax_prefix " +  '"' + taxTaxPrefix + '"') else ""} \
      ~{if defined(taxTaxReportFilename) then ("--tax_report_filename " +  '"' + taxTaxReportFilename + '"') else ""}
  >>>
}