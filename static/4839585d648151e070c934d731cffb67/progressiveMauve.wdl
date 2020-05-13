version 1.0

task ProgressiveMauve {
  input {
    String islandIslandGapSize
    File profileProfile
    File applyApplyBackbone
    String disableDisableBackbone
    String mumsMums
    String seedSeedWeight
    File outputOutput
    File backboneBackboneOutput
    File matchMatchInput
    String maxMaxGappedAlignerLength
    File inputInputGuideTree
    File outputOutputGuideTree
    String debugDebug
    File scratchScratchPath1
    File scratchScratchPath2
    String collinearCollinear
    Boolean scoringScoringScheme
    String noNoWeightScaling
    Boolean maxMaxBreakpointDistanceScale
    Boolean conservationConservationDistanceScale
    String muscleMuscleArgs
    String skipSkipRefinement
    String skipSkipGappedAlignment
    String bpBpDistEstimateMinScore
    String memMemClean
    String gapGapOpen
    Boolean repeatRepeatPenalty
    String gapGapExtend
    File substitutionSubstitutionMatrix
    String weightWeight
    String minMinScaledPenalty
    String hmmHmmPGoHomologous
    String hmmHmmPGoUnrelated
    String hmmHmmIdentity
    String seedSeedFamily
    String solidSolidSeeds
    String codingCodingSeeds
    String disableDisableCache
    String noNoRecursion
  }
  command <<<
    progressiveMauve \
      ~{if defined(islandIslandGapSize) then ("--island-gap-size " +  '"' + islandIslandGapSize + '"') else ""} \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""} \
      ~{if defined(applyApplyBackbone) then ("--apply-backbone " +  '"' + applyApplyBackbone + '"') else ""} \
      ~{if defined(disableDisableBackbone) then ("--disable-backbone " +  '"' + disableDisableBackbone + '"') else ""} \
      ~{if defined(mumsMums) then ("--mums " +  '"' + mumsMums + '"') else ""} \
      ~{if defined(seedSeedWeight) then ("--seed-weight " +  '"' + seedSeedWeight + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(backboneBackboneOutput) then ("--backbone-output " +  '"' + backboneBackboneOutput + '"') else ""} \
      ~{if defined(matchMatchInput) then ("--match-input " +  '"' + matchMatchInput + '"') else ""} \
      ~{if defined(maxMaxGappedAlignerLength) then ("--max-gapped-aligner-length " +  '"' + maxMaxGappedAlignerLength + '"') else ""} \
      ~{if defined(inputInputGuideTree) then ("--input-guide-tree " +  '"' + inputInputGuideTree + '"') else ""} \
      ~{if defined(outputOutputGuideTree) then ("--output-guide-tree " +  '"' + outputOutputGuideTree + '"') else ""} \
      ~{if defined(debugDebug) then ("--debug " +  '"' + debugDebug + '"') else ""} \
      ~{if defined(scratchScratchPath1) then ("--scratch-path-1 " +  '"' + scratchScratchPath1 + '"') else ""} \
      ~{if defined(scratchScratchPath2) then ("--scratch-path-2 " +  '"' + scratchScratchPath2 + '"') else ""} \
      ~{if defined(collinearCollinear) then ("--collinear " +  '"' + collinearCollinear + '"') else ""} \
      ~{true="--scoring-scheme" false="" scoringScoringScheme} \
      ~{if defined(noNoWeightScaling) then ("--no-weight-scaling " +  '"' + noNoWeightScaling + '"') else ""} \
      ~{true="--max-breakpoint-distance-scale" false="" maxMaxBreakpointDistanceScale} \
      ~{true="--conservation-distance-scale" false="" conservationConservationDistanceScale} \
      ~{if defined(muscleMuscleArgs) then ("--muscle-args " +  '"' + muscleMuscleArgs + '"') else ""} \
      ~{if defined(skipSkipRefinement) then ("--skip-refinement " +  '"' + skipSkipRefinement + '"') else ""} \
      ~{if defined(skipSkipGappedAlignment) then ("--skip-gapped-alignment " +  '"' + skipSkipGappedAlignment + '"') else ""} \
      ~{if defined(bpBpDistEstimateMinScore) then ("--bp-dist-estimate-min-score " +  '"' + bpBpDistEstimateMinScore + '"') else ""} \
      ~{if defined(memMemClean) then ("--mem-clean " +  '"' + memMemClean + '"') else ""} \
      ~{if defined(gapGapOpen) then ("--gap-open " +  '"' + gapGapOpen + '"') else ""} \
      ~{true="--repeat-penalty" false="" repeatRepeatPenalty} \
      ~{if defined(gapGapExtend) then ("--gap-extend " +  '"' + gapGapExtend + '"') else ""} \
      ~{if defined(substitutionSubstitutionMatrix) then ("--substitution-matrix " +  '"' + substitutionSubstitutionMatrix + '"') else ""} \
      ~{if defined(weightWeight) then ("--weight " +  '"' + weightWeight + '"') else ""} \
      ~{if defined(minMinScaledPenalty) then ("--min-scaled-penalty " +  '"' + minMinScaledPenalty + '"') else ""} \
      ~{if defined(hmmHmmPGoHomologous) then ("--hmm-p-go-homologous " +  '"' + hmmHmmPGoHomologous + '"') else ""} \
      ~{if defined(hmmHmmPGoUnrelated) then ("--hmm-p-go-unrelated " +  '"' + hmmHmmPGoUnrelated + '"') else ""} \
      ~{if defined(hmmHmmIdentity) then ("--hmm-identity " +  '"' + hmmHmmIdentity + '"') else ""} \
      ~{if defined(seedSeedFamily) then ("--seed-family " +  '"' + seedSeedFamily + '"') else ""} \
      ~{if defined(solidSolidSeeds) then ("--solid-seeds " +  '"' + solidSolidSeeds + '"') else ""} \
      ~{if defined(codingCodingSeeds) then ("--coding-seeds " +  '"' + codingCodingSeeds + '"') else ""} \
      ~{if defined(disableDisableCache) then ("--disable-cache " +  '"' + disableDisableCache + '"') else ""} \
      ~{if defined(noNoRecursion) then ("--no-recursion " +  '"' + noNoRecursion + '"') else ""}
  >>>
}