version 1.0

task BcftoolsCall {
  input {
    Boolean noNoVersion
    File outputOutput
    Boolean outputOutputType
    String ploidyPloidy
    File ploidyPloidyFile
    String regionsRegions
    File regionsRegionsFile
    String samplesSamples
    File samplesSamplesFile
    String targetsTargets
    File targetsTargetsFile
    Int threadsThreads
    Boolean keepKeepAlts
    String formatFormatFields
    Boolean priorPriorFreqs
    Boolean groupGroupSamples
    Int gvcGvcF
    Boolean insertInsertMissed
    Boolean keepKeepMaskedRef
    String skipSkipVariants
    Boolean variantsVariantsOnly
    Boolean consensusConsensusCaller
    String constrainConstrain
    Boolean multiMultiAllelicCaller
    Float novelNovelRate
    Float pvalPvalThreshold
    Float priorPrior
    String? inInVcfGz
  }
  command <<<
    bcftools call \
      ~{inInVcfGz} \
      ~{true="--no-version" false="" noNoVersion} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--output-type" false="" outputOutputType} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{if defined(ploidyPloidyFile) then ("--ploidy-file " +  '"' + ploidyPloidyFile + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(samplesSamplesFile) then ("--samples-file " +  '"' + samplesSamplesFile + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(targetsTargetsFile) then ("--targets-file " +  '"' + targetsTargetsFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--keep-alts" false="" keepKeepAlts} \
      ~{if defined(formatFormatFields) then ("--format-fields " +  '"' + formatFormatFields + '"') else ""} \
      ~{true="--prior-freqs" false="" priorPriorFreqs} \
      ~{true="--group-samples" false="" groupGroupSamples} \
      ~{if defined(gvcGvcF) then ("--gvcf " +  '"' + gvcGvcF + '"') else ""} \
      ~{true="--insert-missed" false="" insertInsertMissed} \
      ~{true="--keep-masked-ref" false="" keepKeepMaskedRef} \
      ~{if defined(skipSkipVariants) then ("--skip-variants " +  '"' + skipSkipVariants + '"') else ""} \
      ~{true="--variants-only" false="" variantsVariantsOnly} \
      ~{true="--consensus-caller" false="" consensusConsensusCaller} \
      ~{if defined(constrainConstrain) then ("--constrain " +  '"' + constrainConstrain + '"') else ""} \
      ~{true="--multiallelic-caller" false="" multiMultiAllelicCaller} \
      ~{if defined(novelNovelRate) then ("--novel-rate " +  '"' + novelNovelRate + '"') else ""} \
      ~{if defined(pvalPvalThreshold) then ("--pval-threshold " +  '"' + pvalPvalThreshold + '"') else ""} \
      ~{if defined(priorPrior) then ("--prior " +  '"' + priorPrior + '"') else ""}
  >>>
}