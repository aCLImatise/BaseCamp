version 1.0

task PhyluceSnpGetDbsnpVariabilityForAllUces {
  input {
    String dbsnpDbsnp
    String xmlXml
    String outputOutput
    String dupeDupeFile
  }
  command <<<
    phyluce_snp_get_dbsnp_variability_for_all_uces \
      ~{if defined(dbsnpDbsnp) then ("--dbsnp " +  '"' + dbsnpDbsnp + '"') else ""} \
      ~{if defined(xmlXml) then ("--xml " +  '"' + xmlXml + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(dupeDupeFile) then ("--dupefile " +  '"' + dupeDupeFile + '"') else ""}
  >>>
}