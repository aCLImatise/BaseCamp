version 1.0

task PhyluceSnpGetDbsnpFreqStats {
  input {
    String dbsnpDbsnp
    String xmlXml
    String outputOutput
    String outputOutput2
    String dupeDupeFile
  }
  command <<<
    phyluce_snp_get_dbsnp_freq_stats \
      ~{if defined(dbsnpDbsnp) then ("--dbsnp " +  '"' + dbsnpDbsnp + '"') else ""} \
      ~{if defined(xmlXml) then ("--xml " +  '"' + xmlXml + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutput2) then ("--output2 " +  '"' + outputOutput2 + '"') else ""} \
      ~{if defined(dupeDupeFile) then ("--dupefile " +  '"' + dupeDupeFile + '"') else ""}
  >>>
}