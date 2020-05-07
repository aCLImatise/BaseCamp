version 1.0

task IgdiscoverCount {
  input {
    String geneGene
    String databaseDatabase
    File plotPlot
    String dDEvalue
    String dDCoverage
    String dDErrors
    String alleleAlleleRatio
  }
  command <<<
    igdiscover count \
      ~{if defined(geneGene) then ("--gene " +  '"' + geneGene + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(plotPlot) then ("--plot " +  '"' + plotPlot + '"') else ""} \
      ~{if defined(dDEvalue) then ("--d-evalue " +  '"' + dDEvalue + '"') else ""} \
      ~{if defined(dDCoverage) then ("--d-coverage " +  '"' + dDCoverage + '"') else ""} \
      ~{if defined(dDErrors) then ("--d-errors " +  '"' + dDErrors + '"') else ""} \
      ~{if defined(alleleAlleleRatio) then ("--allele-ratio " +  '"' + alleleAlleleRatio + '"') else ""}
  >>>
}