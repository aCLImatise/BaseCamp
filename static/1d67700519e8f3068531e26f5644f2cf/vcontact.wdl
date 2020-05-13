version 1.0

task Vcontact {
  input {
    String rawRawProteins
    String relRelMode
    String blastBlastFp
    String proteinsProteinsFp
    String dbDb
    String pcsPcsMode
    String vcsVcsMode
    String c1C1Bin
    String blastpBlastpBin
    String diamondDiamondBin
    String outputOutputDir
    String threadsThreads
    String blastBlastEvalue
    String maxMaxOverlap
    String penaltyPenalty
    String haircutHaircut
    String pcPcInflation
    String vcVcInflation
    String minMinDensity
    String minMinSize
    String vcVcOverlap
    String vcVcPenalty
    String vcVcHaircut
    String mergeMergeMethod
    String similaritySimilarity
    String seedSeedMethod
    Boolean optimizeOptimize
    String sigSig
    Int maxMaxSig
    Boolean permissivePermissive
    String modModInflation
    String modModSig
    String modModSharedMin
    String linkLinkSig
    String linkLinkProp
    Boolean eE
    Boolean clusterClusterFilter
    String criterionCriterion
    String contigsContigs
    String pcsPcs
    String pcPcProfiles
    Boolean verboseVerbose
    Boolean forceForceOverwrite
  }
  command <<<
    vcontact \
      ~{if defined(rawRawProteins) then ("--raw-proteins " +  '"' + rawRawProteins + '"') else ""} \
      ~{if defined(relRelMode) then ("--rel-mode " +  '"' + relRelMode + '"') else ""} \
      ~{if defined(blastBlastFp) then ("--blast-fp " +  '"' + blastBlastFp + '"') else ""} \
      ~{if defined(proteinsProteinsFp) then ("--proteins-fp " +  '"' + proteinsProteinsFp + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(pcsPcsMode) then ("--pcs-mode " +  '"' + pcsPcsMode + '"') else ""} \
      ~{if defined(vcsVcsMode) then ("--vcs-mode " +  '"' + vcsVcsMode + '"') else ""} \
      ~{if defined(c1C1Bin) then ("--c1-bin " +  '"' + c1C1Bin + '"') else ""} \
      ~{if defined(blastpBlastpBin) then ("--blastp-bin " +  '"' + blastpBlastpBin + '"') else ""} \
      ~{if defined(diamondDiamondBin) then ("--diamond-bin " +  '"' + diamondDiamondBin + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(blastBlastEvalue) then ("--blast-evalue " +  '"' + blastBlastEvalue + '"') else ""} \
      ~{if defined(maxMaxOverlap) then ("--max-overlap " +  '"' + maxMaxOverlap + '"') else ""} \
      ~{if defined(penaltyPenalty) then ("--penalty " +  '"' + penaltyPenalty + '"') else ""} \
      ~{if defined(haircutHaircut) then ("--haircut " +  '"' + haircutHaircut + '"') else ""} \
      ~{if defined(pcPcInflation) then ("--pc-inflation " +  '"' + pcPcInflation + '"') else ""} \
      ~{if defined(vcVcInflation) then ("--vc-inflation " +  '"' + vcVcInflation + '"') else ""} \
      ~{if defined(minMinDensity) then ("--min-density " +  '"' + minMinDensity + '"') else ""} \
      ~{if defined(minMinSize) then ("--min-size " +  '"' + minMinSize + '"') else ""} \
      ~{if defined(vcVcOverlap) then ("--vc-overlap " +  '"' + vcVcOverlap + '"') else ""} \
      ~{if defined(vcVcPenalty) then ("--vc-penalty " +  '"' + vcVcPenalty + '"') else ""} \
      ~{if defined(vcVcHaircut) then ("--vc-haircut " +  '"' + vcVcHaircut + '"') else ""} \
      ~{if defined(mergeMergeMethod) then ("--merge-method " +  '"' + mergeMergeMethod + '"') else ""} \
      ~{if defined(similaritySimilarity) then ("--similarity " +  '"' + similaritySimilarity + '"') else ""} \
      ~{if defined(seedSeedMethod) then ("--seed-method " +  '"' + seedSeedMethod + '"') else ""} \
      ~{true="--optimize" false="" optimizeOptimize} \
      ~{if defined(sigSig) then ("--sig " +  '"' + sigSig + '"') else ""} \
      ~{if defined(maxMaxSig) then ("--max-sig " +  '"' + maxMaxSig + '"') else ""} \
      ~{true="--permissive" false="" permissivePermissive} \
      ~{if defined(modModInflation) then ("--mod-inflation " +  '"' + modModInflation + '"') else ""} \
      ~{if defined(modModSig) then ("--mod-sig " +  '"' + modModSig + '"') else ""} \
      ~{if defined(modModSharedMin) then ("--mod-shared-min " +  '"' + modModSharedMin + '"') else ""} \
      ~{if defined(linkLinkSig) then ("--link-sig " +  '"' + linkLinkSig + '"') else ""} \
      ~{if defined(linkLinkProp) then ("--link-prop " +  '"' + linkLinkProp + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{true="--cluster-filter" false="" clusterClusterFilter} \
      ~{if defined(criterionCriterion) then ("--criterion " +  '"' + criterionCriterion + '"') else ""} \
      ~{if defined(contigsContigs) then ("--contigs " +  '"' + contigsContigs + '"') else ""} \
      ~{if defined(pcsPcs) then ("--pcs " +  '"' + pcsPcs + '"') else ""} \
      ~{if defined(pcPcProfiles) then ("--pc-profiles " +  '"' + pcPcProfiles + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--force-overwrite" false="" forceForceOverwrite}
  >>>
}