version 1.0

task MaCMD {
  input {
    String presettingPresetting
    File indexIndex
    File inIn
    File mateMateIn
    Boolean createCreateIndex
    File samSamFileName
    Int numberNumberOfThreads
    Boolean helpHelp
    String scoreScoreFactorForPairedReads
    Boolean checkCheckForConsistency
    String seedingSeedingTechnique
    Int minimalMinimalSeedLength
    Int minimalMinimalAmbiguity
    Int maximalMaximalAmbiguity
    Boolean skipSkipAmbiguousSeeds
    Int seedingSeedingDropOffAMinimalSeedSize
    String seedingSeedingDropOffBFactor
    Boolean maximalMaximalNumberOfSoc
    Boolean minimalMinimalNumberOfSoc
    Int fixedFixedSocWidth
    Int minimalMinimalAlignmentScore
    Boolean omitOmitSecondaryAlignments
    Boolean omitOmitSupplementaryAlignments
    String maximalMaximalSupplementaryOverlap
    Int numberNumberSupplementaryAlignments
    Boolean emulateEmulateNgMlr
    Boolean outputOutputLongCigarsInCgTag
    Int maximalMaximalGapSize
    Int minimumMinimumGenomeSizeForHeuristics
    Boolean disableDisableAllHeuristics
    Int matchMatchScore
    Int mismatchMismatchPenalty
    Int gapGapPenalty
    Int extendExtendPenalty
    Int secondSecondGapPenalty
    Int secondSecondExtendPenalty
    Int paddingPadding
    Int bandwidthBandwidthForExtensions
    Int minimalMinimalBandwidthInGaps
    Int zZDrop
    Boolean detectDetectSmallInversions
    Int zZDropInversions
  }
  command <<<
    maCMD \
      ~{if defined(presettingPresetting) then ("--Presetting " +  '"' + presettingPresetting + '"') else ""} \
      ~{if defined(indexIndex) then ("--Index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(inIn) then ("--In " +  '"' + inIn + '"') else ""} \
      ~{if defined(mateMateIn) then ("--Mate_In " +  '"' + mateMateIn + '"') else ""} \
      ~{true="--Create_Index" false="" createCreateIndex} \
      ~{if defined(samSamFileName) then ("--SAM_File_name " +  '"' + samSamFileName + '"') else ""} \
      ~{if defined(numberNumberOfThreads) then ("--Number_of_Threads " +  '"' + numberNumberOfThreads + '"') else ""} \
      ~{if defined(helpHelp) then ("--Help " +  '"' + helpHelp + '"') else ""} \
      ~{if defined(scoreScoreFactorForPairedReads) then ("--Score_Factor_for_Paired_Reads " +  '"' + scoreScoreFactorForPairedReads + '"') else ""} \
      ~{if defined(checkCheckForConsistency) then ("--Check_for_Consistency " +  '"' + checkCheckForConsistency + '"') else ""} \
      ~{if defined(seedingSeedingTechnique) then ("--Seeding_Technique " +  '"' + seedingSeedingTechnique + '"') else ""} \
      ~{if defined(minimalMinimalSeedLength) then ("--Minimal_Seed_Length " +  '"' + minimalMinimalSeedLength + '"') else ""} \
      ~{if defined(minimalMinimalAmbiguity) then ("--Minimal_Ambiguity " +  '"' + minimalMinimalAmbiguity + '"') else ""} \
      ~{if defined(maximalMaximalAmbiguity) then ("--Maximal_Ambiguity " +  '"' + maximalMaximalAmbiguity + '"') else ""} \
      ~{if defined(skipSkipAmbiguousSeeds) then ("--Skip_Ambiguous_Seeds " +  '"' + skipSkipAmbiguousSeeds + '"') else ""} \
      ~{if defined(seedingSeedingDropOffAMinimalSeedSize) then ("--Seeding_Drop-off_A_-_Minimal_Seed_Size " +  '"' + seedingSeedingDropOffAMinimalSeedSize + '"') else ""} \
      ~{if defined(seedingSeedingDropOffBFactor) then ("--Seeding_Drop-off_B_-_Factor " +  '"' + seedingSeedingDropOffBFactor + '"') else ""} \
      ~{true="--Maximal_Number_of_SoC" false="" maximalMaximalNumberOfSoc} \
      ~{true="--Minimal_Number_of_SoC" false="" minimalMinimalNumberOfSoc} \
      ~{if defined(fixedFixedSocWidth) then ("--Fixed_SoC_Width " +  '"' + fixedFixedSocWidth + '"') else ""} \
      ~{if defined(minimalMinimalAlignmentScore) then ("--Minimal_Alignment_Score " +  '"' + minimalMinimalAlignmentScore + '"') else ""} \
      ~{if defined(omitOmitSecondaryAlignments) then ("--Omit_Secondary_Alignments " +  '"' + omitOmitSecondaryAlignments + '"') else ""} \
      ~{if defined(omitOmitSupplementaryAlignments) then ("--Omit_Supplementary_Alignments " +  '"' + omitOmitSupplementaryAlignments + '"') else ""} \
      ~{if defined(maximalMaximalSupplementaryOverlap) then ("--Maximal_Supplementary_Overlap " +  '"' + maximalMaximalSupplementaryOverlap + '"') else ""} \
      ~{if defined(numberNumberSupplementaryAlignments) then ("--Number_Supplementary_Alignments " +  '"' + numberNumberSupplementaryAlignments + '"') else ""} \
      ~{true="--Emulate_NGMLR" false="" emulateEmulateNgMlr} \
      ~{if defined(outputOutputLongCigarsInCgTag) then ("--Output_long_cigars_in_CG_tag " +  '"' + outputOutputLongCigarsInCgTag + '"') else ""} \
      ~{if defined(maximalMaximalGapSize) then ("--Maximal_Gap_Size " +  '"' + maximalMaximalGapSize + '"') else ""} \
      ~{if defined(minimumMinimumGenomeSizeForHeuristics) then ("--Minimum_Genome_Size_for_Heuristics " +  '"' + minimumMinimumGenomeSizeForHeuristics + '"') else ""} \
      ~{if defined(disableDisableAllHeuristics) then ("--Disable_All_Heuristics " +  '"' + disableDisableAllHeuristics + '"') else ""} \
      ~{if defined(matchMatchScore) then ("--Match_Score " +  '"' + matchMatchScore + '"') else ""} \
      ~{if defined(mismatchMismatchPenalty) then ("--Mismatch_Penalty " +  '"' + mismatchMismatchPenalty + '"') else ""} \
      ~{if defined(gapGapPenalty) then ("--Gap_penalty " +  '"' + gapGapPenalty + '"') else ""} \
      ~{if defined(extendExtendPenalty) then ("--Extend_Penalty " +  '"' + extendExtendPenalty + '"') else ""} \
      ~{if defined(secondSecondGapPenalty) then ("--Second_Gap_Penalty " +  '"' + secondSecondGapPenalty + '"') else ""} \
      ~{if defined(secondSecondExtendPenalty) then ("--Second_Extend_Penalty " +  '"' + secondSecondExtendPenalty + '"') else ""} \
      ~{if defined(paddingPadding) then ("--Padding " +  '"' + paddingPadding + '"') else ""} \
      ~{if defined(bandwidthBandwidthForExtensions) then ("--Bandwidth_for_Extensions " +  '"' + bandwidthBandwidthForExtensions + '"') else ""} \
      ~{if defined(minimalMinimalBandwidthInGaps) then ("--Minimal_Bandwidth_in_Gaps " +  '"' + minimalMinimalBandwidthInGaps + '"') else ""} \
      ~{if defined(zZDrop) then ("--Z_Drop " +  '"' + zZDrop + '"') else ""} \
      ~{if defined(detectDetectSmallInversions) then ("--Detect_Small_Inversions " +  '"' + detectDetectSmallInversions + '"') else ""} \
      ~{if defined(zZDropInversions) then ("--Z_Drop_Inversions " +  '"' + zZDropInversions + '"') else ""}
  >>>
}