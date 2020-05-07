version 1.0

task PhyluceProbeStripMaskedLociFromSet {
  input {
    String bedBed
    String twoTwoBit
    String outputOutput
    String filterFilterMask
    Int maxMaxN
    Int minMinLength
  }
  command <<<
    phyluce_probe_strip_masked_loci_from_set \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(twoTwoBit) then ("--twobit " +  '"' + twoTwoBit + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(filterFilterMask) then ("--filter-mask " +  '"' + filterFilterMask + '"') else ""} \
      ~{if defined(maxMaxN) then ("--max-n " +  '"' + maxMaxN + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""}
  >>>
}