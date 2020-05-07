version 1.0

task IsONclust {
  input {
    String fastFastQ
    String flFlNc
    String ccsCcs
    String tT
    String dD
    String qQ
    Boolean ontOnt
    Boolean isoIsoSeq
    Boolean useUseOldSortedFile
    Boolean consensusConsensus
    String abundanceAbundanceRatio
    String rcRcIdentityThreshold
    Boolean medakaMedaka
    String kK
    String wW
    Int minMinShared
    String mappedMappedThreshold
    String alignedAlignedThreshold
    String batchBatchType
    Int minMinFraction
    Int minMinProbNoHits
    String outOutFolder
  }
  command <<<
    isONclust \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(flFlNc) then ("--flnc " +  '"' + flFlNc + '"') else ""} \
      ~{if defined(ccsCcs) then ("--ccs " +  '"' + ccsCcs + '"') else ""} \
      ~{if defined(tT) then ("--t " +  '"' + tT + '"') else ""} \
      ~{if defined(dD) then ("--d " +  '"' + dD + '"') else ""} \
      ~{if defined(qQ) then ("--q " +  '"' + qQ + '"') else ""} \
      ~{true="--ont" false="" ontOnt} \
      ~{true="--isoseq" false="" isoIsoSeq} \
      ~{true="--use_old_sorted_file" false="" useUseOldSortedFile} \
      ~{true="--consensus" false="" consensusConsensus} \
      ~{if defined(abundanceAbundanceRatio) then ("--abundance_ratio " +  '"' + abundanceAbundanceRatio + '"') else ""} \
      ~{if defined(rcRcIdentityThreshold) then ("--rc_identity_threshold " +  '"' + rcRcIdentityThreshold + '"') else ""} \
      ~{true="--medaka" false="" medakaMedaka} \
      ~{if defined(kK) then ("--k " +  '"' + kK + '"') else ""} \
      ~{if defined(wW) then ("--w " +  '"' + wW + '"') else ""} \
      ~{if defined(minMinShared) then ("--min_shared " +  '"' + minMinShared + '"') else ""} \
      ~{if defined(mappedMappedThreshold) then ("--mapped_threshold " +  '"' + mappedMappedThreshold + '"') else ""} \
      ~{if defined(alignedAlignedThreshold) then ("--aligned_threshold " +  '"' + alignedAlignedThreshold + '"') else ""} \
      ~{if defined(batchBatchType) then ("--batch_type " +  '"' + batchBatchType + '"') else ""} \
      ~{if defined(minMinFraction) then ("--min_fraction " +  '"' + minMinFraction + '"') else ""} \
      ~{if defined(minMinProbNoHits) then ("--min_prob_no_hits " +  '"' + minMinProbNoHits + '"') else ""} \
      ~{if defined(outOutFolder) then ("--outfolder " +  '"' + outOutFolder + '"') else ""}
  >>>
}