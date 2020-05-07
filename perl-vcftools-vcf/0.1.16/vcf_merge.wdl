version 1.0

task VcfMerge {
  input {
    Boolean collapseCollapse
    Boolean removeRemoveDuplicates
    File vcfVcfHeader
    Boolean regionsRegions
    String refRefForMissing
    Boolean silentSilent
    Boolean trimTrimAlts
  }
  command <<<
    vcf-merge \
      ~{true="--collapse" false="" collapseCollapse} \
      ~{true="--remove-duplicates" false="" removeRemoveDuplicates} \
      ~{if defined(vcfVcfHeader) then ("--vcf-header " +  '"' + vcfVcfHeader + '"') else ""} \
      ~{true="--regions" false="" regionsRegions} \
      ~{if defined(refRefForMissing) then ("--ref-for-missing " +  '"' + refRefForMissing + '"') else ""} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--trim-ALTs" false="" trimTrimAlts}
  >>>
}