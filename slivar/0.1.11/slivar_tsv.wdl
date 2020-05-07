version 1.0

task SlivarTsv {
  input {
    String pedPed
    String csqCsqField
    String csqCsqColumn
    String sampleSampleField
    String geneGeneDescription
    String impactImpactOrder
    String infoInfoField
    String outOut
    String? vcfVcf
  }
  command <<<
    slivar tsv \
      ~{vcfVcf} \
      ~{if defined(pedPed) then ("--ped " +  '"' + pedPed + '"') else ""} \
      ~{if defined(csqCsqField) then ("--csq-field " +  '"' + csqCsqField + '"') else ""} \
      ~{if defined(csqCsqColumn) then ("--csq-column " +  '"' + csqCsqColumn + '"') else ""} \
      ~{if defined(sampleSampleField) then ("--sample-field " +  '"' + sampleSampleField + '"') else ""} \
      ~{if defined(geneGeneDescription) then ("--gene-description " +  '"' + geneGeneDescription + '"') else ""} \
      ~{if defined(impactImpactOrder) then ("--impact-order " +  '"' + impactImpactOrder + '"') else ""} \
      ~{if defined(infoInfoField) then ("--info-field " +  '"' + infoInfoField + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}