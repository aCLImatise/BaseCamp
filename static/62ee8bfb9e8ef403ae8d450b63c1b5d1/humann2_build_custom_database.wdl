version 1.0

task Humann2BuildCustomDatabase {
  input {
    String inputInput
    String outputOutput
    String idIdMapping
    String taxonomicTaxonomicProfile
    String formatFormat
    String genusGenusAbundanceThreshold
  }
  command <<<
    humann2_build_custom_database \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(idIdMapping) then ("--id-mapping " +  '"' + idIdMapping + '"') else ""} \
      ~{if defined(taxonomicTaxonomicProfile) then ("--taxonomic-profile " +  '"' + taxonomicTaxonomicProfile + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(genusGenusAbundanceThreshold) then ("--genus-abundance-threshold " +  '"' + genusGenusAbundanceThreshold + '"') else ""}
  >>>
}