version 1.0

task PhyluceSnpFindSnpsInBedInterval {
  input {
    String uceUce
    String snpSnp
    String outputOutput
  }
  command <<<
    phyluce_snp_find_snps_in_bed_interval \
      ~{if defined(uceUce) then ("--uce " +  '"' + uceUce + '"') else ""} \
      ~{if defined(snpSnp) then ("--snp " +  '"' + snpSnp + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}