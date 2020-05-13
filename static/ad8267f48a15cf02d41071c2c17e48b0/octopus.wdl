version 1.0

task Octopus {
  input {
    String configConfig
    Boolean debugDebug
    Boolean traceTrace
    Boolean fastFast
    Boolean veryVeryFast
    Boolean wW
    Boolean threadsThreads
    Boolean xX
    Boolean bB
    String maxMaxOpenReadFiles
    String targetTargetWorkingMemory
    String tempTempDirectoryPrefix
    Boolean rR
    Boolean iI
    Boolean iI
    Boolean oneOneBasedIndexing
    Boolean tT
    Boolean tT
    Boolean kK
    Boolean kK
    Boolean sS
    Boolean sS
    Boolean ignoreIgnoreUnmappedContigs
    String pedigreePedigree
    Boolean oO
    String contigContigOutputOrder
    Boolean sitesSitesOnly
    Boolean legacyLegacy
    String reReGenotype
    String bamBamOut
    Boolean fullFullBamOut
    String dataDataProfile
    String readReadFiltering
    Boolean considerConsiderUnmappedReads
    String minMinMappingQuality
    String goodGoodBaseQuality
    Boolean minMinGoodBaseFraction
    String minMinGoodBases
    Boolean allowAllowQcFails
    String minMinReadLength
    String maxMaxReadLength
    Boolean allowAllowMarkedDuplicates
    Boolean allowAllowOctopusDuplicates
    Boolean allowAllowSecondaryAlignments
    Boolean allowAllowSupplementaryAlignments
    Boolean noNoReadsWithUnmappedSegments
    Boolean noNoReadsWithDistantSegments
    Boolean noNoAdapterContaminatedReads
    Boolean disableDisableDownsampling
    String downDownSampleAbove
    String downDownSampleTarget
    Boolean gG
    String repeatRepeatCandidateGenerator
    Boolean aA
    Boolean cC
    String sourceSourceCandidatesFile
    Boolean minMinSourceQuality
    String useUseFilteredSourceCandidates
    String minMinBaseQuality
    Boolean minMinSupportingReads
    String maxMaxVariantSize
    String kmKmErSizes
    String numNumFallBackKmErs
    String fallFallBackKmErGap
    String maxMaxRegionToAssemble
    String maxMaxAssembleRegionOverlap
    Boolean assembleAssembleAll
    String assemblerAssemblerMaskBaseQuality
    String minMinKmErPrune
    String maxMaxBubbles
    String minMinBubbleScore
    String protectProtectReferenceHaplotype
    Boolean cC
    Boolean pP
    Boolean pP
    String contigContigPloIDiesFile
    String minMinVariantPosterior
    Boolean refRefCall
    String refRefCallBlockMergeThreshold
    String minMinRefCallPosterior
    Boolean zZ
    String snpSnpHeterozygosityStdev
    Boolean yY
    Boolean useUseUniformGenotypePriors
    String maxMaxGenotypes
    String maxMaxJointGenotypes
    Boolean useUseIndependentGenotypePriors
    String modelModelPosterior
    String inactiveInactiveFlankScoring
    String modelModelMappingQuality
    String sequenceSequenceErrorModel
    String maxMaxVbSeeds
    Boolean lL
    String minMinPhaseScore
    Boolean fF
    String filterFilterExpression
    String somaticSomaticFilterExpression
    String deDeNovoFilterExpression
    String refRefCallFilterExpression
    String useUseCallingReadsForFiltering
    Boolean keepKeepUnfilteredCalls
    Boolean annotationsAnnotations
    String filterFilterVcf
    String forestForestFile
    String somaticSomaticForestFile
  }
  command <<<
    octopus \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--trace" false="" traceTrace} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--very-fast" false="" veryVeryFast} \
      ~{true="-w" false="" wW} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-X" false="" xX} \
      ~{true="-B" false="" bB} \
      ~{if defined(maxMaxOpenReadFiles) then ("--max-open-read-files " +  '"' + maxMaxOpenReadFiles + '"') else ""} \
      ~{if defined(targetTargetWorkingMemory) then ("--target-working-memory " +  '"' + targetTargetWorkingMemory + '"') else ""} \
      ~{if defined(tempTempDirectoryPrefix) then ("--temp-directory-prefix " +  '"' + tempTempDirectoryPrefix + '"') else ""} \
      ~{true="-R" false="" rR} \
      ~{true="-I" false="" iI} \
      ~{true="-i" false="" iI} \
      ~{true="--one-based-indexing" false="" oneOneBasedIndexing} \
      ~{true="-T" false="" tT} \
      ~{true="-t" false="" tT} \
      ~{true="-K" false="" kK} \
      ~{true="-k" false="" kK} \
      ~{true="-S" false="" sS} \
      ~{true="-s" false="" sS} \
      ~{true="--ignore-unmapped-contigs" false="" ignoreIgnoreUnmappedContigs} \
      ~{if defined(pedigreePedigree) then ("--pedigree " +  '"' + pedigreePedigree + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{if defined(contigContigOutputOrder) then ("--contig-output-order " +  '"' + contigContigOutputOrder + '"') else ""} \
      ~{true="--sites-only" false="" sitesSitesOnly} \
      ~{true="--legacy" false="" legacyLegacy} \
      ~{if defined(reReGenotype) then ("--regenotype " +  '"' + reReGenotype + '"') else ""} \
      ~{if defined(bamBamOut) then ("--bamout " +  '"' + bamBamOut + '"') else ""} \
      ~{true="--full-bamout" false="" fullFullBamOut} \
      ~{if defined(dataDataProfile) then ("--data-profile " +  '"' + dataDataProfile + '"') else ""} \
      ~{if defined(readReadFiltering) then ("--read-filtering " +  '"' + readReadFiltering + '"') else ""} \
      ~{true="--consider-unmapped-reads" false="" considerConsiderUnmappedReads} \
      ~{if defined(minMinMappingQuality) then ("--min-mapping-quality " +  '"' + minMinMappingQuality + '"') else ""} \
      ~{if defined(goodGoodBaseQuality) then ("--good-base-quality " +  '"' + goodGoodBaseQuality + '"') else ""} \
      ~{true="--min-good-base-fraction" false="" minMinGoodBaseFraction} \
      ~{if defined(minMinGoodBases) then ("--min-good-bases " +  '"' + minMinGoodBases + '"') else ""} \
      ~{true="--allow-qc-fails" false="" allowAllowQcFails} \
      ~{if defined(minMinReadLength) then ("--min-read-length " +  '"' + minMinReadLength + '"') else ""} \
      ~{if defined(maxMaxReadLength) then ("--max-read-length " +  '"' + maxMaxReadLength + '"') else ""} \
      ~{true="--allow-marked-duplicates" false="" allowAllowMarkedDuplicates} \
      ~{true="--allow-octopus-duplicates" false="" allowAllowOctopusDuplicates} \
      ~{true="--allow-secondary-alignments" false="" allowAllowSecondaryAlignments} \
      ~{true="--allow-supplementary-alignments" false="" allowAllowSupplementaryAlignments} \
      ~{true="--no-reads-with-unmapped-segments" false="" noNoReadsWithUnmappedSegments} \
      ~{true="--no-reads-with-distant-segments" false="" noNoReadsWithDistantSegments} \
      ~{true="--no-adapter-contaminated-reads" false="" noNoAdapterContaminatedReads} \
      ~{true="--disable-downsampling" false="" disableDisableDownsampling} \
      ~{if defined(downDownSampleAbove) then ("--downsample-above " +  '"' + downDownSampleAbove + '"') else ""} \
      ~{if defined(downDownSampleTarget) then ("--downsample-target " +  '"' + downDownSampleTarget + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{if defined(repeatRepeatCandidateGenerator) then ("--repeat-candidate-generator " +  '"' + repeatRepeatCandidateGenerator + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{if defined(sourceSourceCandidatesFile) then ("--source-candidates-file " +  '"' + sourceSourceCandidatesFile + '"') else ""} \
      ~{true="--min-source-quality" false="" minMinSourceQuality} \
      ~{if defined(useUseFilteredSourceCandidates) then ("--use-filtered-source-candidates " +  '"' + useUseFilteredSourceCandidates + '"') else ""} \
      ~{if defined(minMinBaseQuality) then ("--min-base-quality " +  '"' + minMinBaseQuality + '"') else ""} \
      ~{true="--min-supporting-reads" false="" minMinSupportingReads} \
      ~{if defined(maxMaxVariantSize) then ("--max-variant-size " +  '"' + maxMaxVariantSize + '"') else ""} \
      ~{if defined(kmKmErSizes) then ("--kmer-sizes " +  '"' + kmKmErSizes + '"') else ""} \
      ~{if defined(numNumFallBackKmErs) then ("--num-fallback-kmers " +  '"' + numNumFallBackKmErs + '"') else ""} \
      ~{if defined(fallFallBackKmErGap) then ("--fallback-kmer-gap " +  '"' + fallFallBackKmErGap + '"') else ""} \
      ~{if defined(maxMaxRegionToAssemble) then ("--max-region-to-assemble " +  '"' + maxMaxRegionToAssemble + '"') else ""} \
      ~{if defined(maxMaxAssembleRegionOverlap) then ("--max-assemble-region-overlap " +  '"' + maxMaxAssembleRegionOverlap + '"') else ""} \
      ~{true="--assemble-all" false="" assembleAssembleAll} \
      ~{if defined(assemblerAssemblerMaskBaseQuality) then ("--assembler-mask-base-quality " +  '"' + assemblerAssemblerMaskBaseQuality + '"') else ""} \
      ~{if defined(minMinKmErPrune) then ("--min-kmer-prune " +  '"' + minMinKmErPrune + '"') else ""} \
      ~{if defined(maxMaxBubbles) then ("--max-bubbles " +  '"' + maxMaxBubbles + '"') else ""} \
      ~{if defined(minMinBubbleScore) then ("--min-bubble-score " +  '"' + minMinBubbleScore + '"') else ""} \
      ~{if defined(protectProtectReferenceHaplotype) then ("--protect-reference-haplotype " +  '"' + protectProtectReferenceHaplotype + '"') else ""} \
      ~{true="-C" false="" cC} \
      ~{true="-P" false="" pP} \
      ~{true="-p" false="" pP} \
      ~{if defined(contigContigPloIDiesFile) then ("--contig-ploidies-file " +  '"' + contigContigPloIDiesFile + '"') else ""} \
      ~{if defined(minMinVariantPosterior) then ("--min-variant-posterior " +  '"' + minMinVariantPosterior + '"') else ""} \
      ~{true="--refcall" false="" refRefCall} \
      ~{if defined(refRefCallBlockMergeThreshold) then ("--refcall-block-merge-threshold " +  '"' + refRefCallBlockMergeThreshold + '"') else ""} \
      ~{if defined(minMinRefCallPosterior) then ("--min-refcall-posterior " +  '"' + minMinRefCallPosterior + '"') else ""} \
      ~{true="-z" false="" zZ} \
      ~{if defined(snpSnpHeterozygosityStdev) then ("--snp-heterozygosity-stdev " +  '"' + snpSnpHeterozygosityStdev + '"') else ""} \
      ~{true="-y" false="" yY} \
      ~{true="--use-uniform-genotype-priors" false="" useUseUniformGenotypePriors} \
      ~{if defined(maxMaxGenotypes) then ("--max-genotypes " +  '"' + maxMaxGenotypes + '"') else ""} \
      ~{if defined(maxMaxJointGenotypes) then ("--max-joint-genotypes " +  '"' + maxMaxJointGenotypes + '"') else ""} \
      ~{true="--use-independent-genotype-priors" false="" useUseIndependentGenotypePriors} \
      ~{if defined(modelModelPosterior) then ("--model-posterior " +  '"' + modelModelPosterior + '"') else ""} \
      ~{if defined(inactiveInactiveFlankScoring) then ("--inactive-flank-scoring " +  '"' + inactiveInactiveFlankScoring + '"') else ""} \
      ~{if defined(modelModelMappingQuality) then ("--model-mapping-quality " +  '"' + modelModelMappingQuality + '"') else ""} \
      ~{if defined(sequenceSequenceErrorModel) then ("--sequence-error-model " +  '"' + sequenceSequenceErrorModel + '"') else ""} \
      ~{if defined(maxMaxVbSeeds) then ("--max-vb-seeds " +  '"' + maxMaxVbSeeds + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{if defined(minMinPhaseScore) then ("--min-phase-score " +  '"' + minMinPhaseScore + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(filterFilterExpression) then ("--filter-expression " +  '"' + filterFilterExpression + '"') else ""} \
      ~{if defined(somaticSomaticFilterExpression) then ("--somatic-filter-expression " +  '"' + somaticSomaticFilterExpression + '"') else ""} \
      ~{if defined(deDeNovoFilterExpression) then ("--denovo-filter-expression " +  '"' + deDeNovoFilterExpression + '"') else ""} \
      ~{if defined(refRefCallFilterExpression) then ("--refcall-filter-expression " +  '"' + refRefCallFilterExpression + '"') else ""} \
      ~{if defined(useUseCallingReadsForFiltering) then ("--use-calling-reads-for-filtering " +  '"' + useUseCallingReadsForFiltering + '"') else ""} \
      ~{true="--keep-unfiltered-calls" false="" keepKeepUnfilteredCalls} \
      ~{true="--annotations" false="" annotationsAnnotations} \
      ~{if defined(filterFilterVcf) then ("--filter-vcf " +  '"' + filterFilterVcf + '"') else ""} \
      ~{if defined(forestForestFile) then ("--forest-file " +  '"' + forestForestFile + '"') else ""} \
      ~{if defined(somaticSomaticForestFile) then ("--somatic-forest-file " +  '"' + somaticSomaticForestFile + '"') else ""}
  >>>
}