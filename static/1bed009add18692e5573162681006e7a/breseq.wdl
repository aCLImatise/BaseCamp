version 1.0

task Breseq {
  input {
    String referenceReference
    String nameName
    String numNumProcessors
    String outputOutput
    Boolean polymorphismPolymorphismPrediction
    String limitLimitFoldCoverage
    Boolean alignedAlignedSam
    String readReadMinLength
    String readReadMaxSameBaseFraction
    String readReadMaxNFraction
    Boolean useUseVersionForSeqId
    String contigContigReference
    String junctionJunctionOnlyReference
    Boolean targetedTargetedSequencing
    String userUserEvidenceGd
    String minimumMinimumMappingQuality
    String baseBaseQualityCutOff
    Boolean qualityQualityScoreTrim
    String requireRequireMatchLength
    String requireRequireMatchFraction
    String maximumMaximumReadMismatches
    String deletionDeletionCoveragePropagationCutOff
    String deletionDeletionCoverageSeedCutOff
    String bowtie2Bowtie2Scoring
    String bowtie2Bowtie2Stage1
    String bowtie2Bowtie2Stage2
    String bowtie2Bowtie2Junction
    Boolean noNoJunctionPrediction
    String junctionJunctionInDelSplitLength
    String junctionJunctionAlignmentPairLimit
    String junctionJunctionMinimumCandidates
    String junctionJunctionMaximumCandidates
    String junctionJunctionCandidateLengthFactor
    String junctionJunctionMinimumCandidatePosHashScore
    String junctionJunctionScoreCutOff
    String junctionJunctionMinimumPosHashScore
    String junctionJunctionMinimumSideMatch
    String junctionJunctionMinimumPrNoReadStartPerPosition
    Boolean junctionJunctionAllowSuboptimalMatches
    String consensusConsensusScoreCutOff
    String consensusConsensusFrequencyCutOff
    String consensusConsensusMinimumVariantCoverage
    String consensusConsensusMinimumTotalCoverage
    String consensusConsensusMinimumVariantCoverageEachStrand
    String consensusConsensusMinimumTotalCoverageEachStrand
    String consensusConsensusRejectInDelHomopolymerLength
    String consensusConsensusRejectSurroundingHomopolymerLength
    String polymorphismPolymorphismScoreCutOff
    String polymorphismPolymorphismFrequencyCutOff
    String polymorphismPolymorphismMinimumVariantCoverage
    String polymorphismPolymorphismMinimumTotalCoverage
    String polymorphismPolymorphismMinimumVariantCoverageEachStrand
    String polymorphismPolymorphismMinimumTotalCoverageEachStrand
    String polymorphismPolymorphismBiasCutOff
    Boolean polymorphismPolymorphismNoIndels
    String polymorphismPolymorphismRejectInDelHomopolymerLength
    String polymorphismPolymorphismRejectSurroundingHomopolymerLength
    String maxMaxDisplayedReads
    Boolean briefBriefHtmlOutput
    String headerHeaderGenomeDiff
    Boolean noNoJavascript
    Boolean skipSkipRaMcPrediction
    Boolean skipSkipJcPrediction
    Boolean skipSkipMcPrediction
    Boolean keepKeepIntermediates
    Boolean perPerPositionFile
    Boolean junctionJunctionDebug
    Boolean cnvCnv
    String cnvCnvTileSize
    Boolean cnvCnvIgnoreRedundant
  }
  command <<<
    breseq \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(numNumProcessors) then ("--num-processors " +  '"' + numNumProcessors + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--polymorphism-prediction" false="" polymorphismPolymorphismPrediction} \
      ~{if defined(limitLimitFoldCoverage) then ("--limit-fold-coverage " +  '"' + limitLimitFoldCoverage + '"') else ""} \
      ~{true="--aligned-sam" false="" alignedAlignedSam} \
      ~{if defined(readReadMinLength) then ("--read-min-length " +  '"' + readReadMinLength + '"') else ""} \
      ~{if defined(readReadMaxSameBaseFraction) then ("--read-max-same-base-fraction " +  '"' + readReadMaxSameBaseFraction + '"') else ""} \
      ~{if defined(readReadMaxNFraction) then ("--read-max-N-fraction " +  '"' + readReadMaxNFraction + '"') else ""} \
      ~{true="--use-version-for-seq-id" false="" useUseVersionForSeqId} \
      ~{if defined(contigContigReference) then ("--contig-reference " +  '"' + contigContigReference + '"') else ""} \
      ~{if defined(junctionJunctionOnlyReference) then ("--junction-only-reference " +  '"' + junctionJunctionOnlyReference + '"') else ""} \
      ~{true="--targeted-sequencing" false="" targetedTargetedSequencing} \
      ~{if defined(userUserEvidenceGd) then ("--user-evidence-gd " +  '"' + userUserEvidenceGd + '"') else ""} \
      ~{if defined(minimumMinimumMappingQuality) then ("--minimum-mapping-quality " +  '"' + minimumMinimumMappingQuality + '"') else ""} \
      ~{if defined(baseBaseQualityCutOff) then ("--base-quality-cutoff " +  '"' + baseBaseQualityCutOff + '"') else ""} \
      ~{true="--quality-score-trim" false="" qualityQualityScoreTrim} \
      ~{if defined(requireRequireMatchLength) then ("--require-match-length " +  '"' + requireRequireMatchLength + '"') else ""} \
      ~{if defined(requireRequireMatchFraction) then ("--require-match-fraction " +  '"' + requireRequireMatchFraction + '"') else ""} \
      ~{if defined(maximumMaximumReadMismatches) then ("--maximum-read-mismatches " +  '"' + maximumMaximumReadMismatches + '"') else ""} \
      ~{if defined(deletionDeletionCoveragePropagationCutOff) then ("--deletion-coverage-propagation-cutoff " +  '"' + deletionDeletionCoveragePropagationCutOff + '"') else ""} \
      ~{if defined(deletionDeletionCoverageSeedCutOff) then ("--deletion-coverage-seed-cutoff " +  '"' + deletionDeletionCoverageSeedCutOff + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Scoring) then ("--bowtie2-scoring " +  '"' + bowtie2Bowtie2Scoring + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Stage1) then ("--bowtie2-stage1 " +  '"' + bowtie2Bowtie2Stage1 + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Stage2) then ("--bowtie2-stage2 " +  '"' + bowtie2Bowtie2Stage2 + '"') else ""} \
      ~{if defined(bowtie2Bowtie2Junction) then ("--bowtie2-junction " +  '"' + bowtie2Bowtie2Junction + '"') else ""} \
      ~{true="--no-junction-prediction" false="" noNoJunctionPrediction} \
      ~{if defined(junctionJunctionInDelSplitLength) then ("--junction-indel-split-length " +  '"' + junctionJunctionInDelSplitLength + '"') else ""} \
      ~{if defined(junctionJunctionAlignmentPairLimit) then ("--junction-alignment-pair-limit " +  '"' + junctionJunctionAlignmentPairLimit + '"') else ""} \
      ~{if defined(junctionJunctionMinimumCandidates) then ("--junction-minimum-candidates " +  '"' + junctionJunctionMinimumCandidates + '"') else ""} \
      ~{if defined(junctionJunctionMaximumCandidates) then ("--junction-maximum-candidates " +  '"' + junctionJunctionMaximumCandidates + '"') else ""} \
      ~{if defined(junctionJunctionCandidateLengthFactor) then ("--junction-candidate-length-factor " +  '"' + junctionJunctionCandidateLengthFactor + '"') else ""} \
      ~{if defined(junctionJunctionMinimumCandidatePosHashScore) then ("--junction-minimum-candidate-pos-hash-score " +  '"' + junctionJunctionMinimumCandidatePosHashScore + '"') else ""} \
      ~{if defined(junctionJunctionScoreCutOff) then ("--junction-score-cutoff " +  '"' + junctionJunctionScoreCutOff + '"') else ""} \
      ~{if defined(junctionJunctionMinimumPosHashScore) then ("--junction-minimum-pos-hash-score " +  '"' + junctionJunctionMinimumPosHashScore + '"') else ""} \
      ~{if defined(junctionJunctionMinimumSideMatch) then ("--junction-minimum-side-match " +  '"' + junctionJunctionMinimumSideMatch + '"') else ""} \
      ~{if defined(junctionJunctionMinimumPrNoReadStartPerPosition) then ("--junction-minimum-pr-no-read-start-per-position " +  '"' + junctionJunctionMinimumPrNoReadStartPerPosition + '"') else ""} \
      ~{true="--junction-allow-suboptimal-matches" false="" junctionJunctionAllowSuboptimalMatches} \
      ~{if defined(consensusConsensusScoreCutOff) then ("--consensus-score-cutoff " +  '"' + consensusConsensusScoreCutOff + '"') else ""} \
      ~{if defined(consensusConsensusFrequencyCutOff) then ("--consensus-frequency-cutoff " +  '"' + consensusConsensusFrequencyCutOff + '"') else ""} \
      ~{if defined(consensusConsensusMinimumVariantCoverage) then ("--consensus-minimum-variant-coverage " +  '"' + consensusConsensusMinimumVariantCoverage + '"') else ""} \
      ~{if defined(consensusConsensusMinimumTotalCoverage) then ("--consensus-minimum-total-coverage " +  '"' + consensusConsensusMinimumTotalCoverage + '"') else ""} \
      ~{if defined(consensusConsensusMinimumVariantCoverageEachStrand) then ("--consensus-minimum-variant-coverage-each-strand " +  '"' + consensusConsensusMinimumVariantCoverageEachStrand + '"') else ""} \
      ~{if defined(consensusConsensusMinimumTotalCoverageEachStrand) then ("--consensus-minimum-total-coverage-each-strand " +  '"' + consensusConsensusMinimumTotalCoverageEachStrand + '"') else ""} \
      ~{if defined(consensusConsensusRejectInDelHomopolymerLength) then ("--consensus-reject-indel-homopolymer-length " +  '"' + consensusConsensusRejectInDelHomopolymerLength + '"') else ""} \
      ~{if defined(consensusConsensusRejectSurroundingHomopolymerLength) then ("--consensus-reject-surrounding-homopolymer-length " +  '"' + consensusConsensusRejectSurroundingHomopolymerLength + '"') else ""} \
      ~{if defined(polymorphismPolymorphismScoreCutOff) then ("--polymorphism-score-cutoff " +  '"' + polymorphismPolymorphismScoreCutOff + '"') else ""} \
      ~{if defined(polymorphismPolymorphismFrequencyCutOff) then ("--polymorphism-frequency-cutoff " +  '"' + polymorphismPolymorphismFrequencyCutOff + '"') else ""} \
      ~{if defined(polymorphismPolymorphismMinimumVariantCoverage) then ("--polymorphism-minimum-variant-coverage " +  '"' + polymorphismPolymorphismMinimumVariantCoverage + '"') else ""} \
      ~{if defined(polymorphismPolymorphismMinimumTotalCoverage) then ("--polymorphism-minimum-total-coverage " +  '"' + polymorphismPolymorphismMinimumTotalCoverage + '"') else ""} \
      ~{if defined(polymorphismPolymorphismMinimumVariantCoverageEachStrand) then ("--polymorphism-minimum-variant-coverage-each-strand " +  '"' + polymorphismPolymorphismMinimumVariantCoverageEachStrand + '"') else ""} \
      ~{if defined(polymorphismPolymorphismMinimumTotalCoverageEachStrand) then ("--polymorphism-minimum-total-coverage-each-strand " +  '"' + polymorphismPolymorphismMinimumTotalCoverageEachStrand + '"') else ""} \
      ~{if defined(polymorphismPolymorphismBiasCutOff) then ("--polymorphism-bias-cutoff " +  '"' + polymorphismPolymorphismBiasCutOff + '"') else ""} \
      ~{true="--polymorphism-no-indels" false="" polymorphismPolymorphismNoIndels} \
      ~{if defined(polymorphismPolymorphismRejectInDelHomopolymerLength) then ("--polymorphism-reject-indel-homopolymer-length " +  '"' + polymorphismPolymorphismRejectInDelHomopolymerLength + '"') else ""} \
      ~{if defined(polymorphismPolymorphismRejectSurroundingHomopolymerLength) then ("--polymorphism-reject-surrounding-homopolymer-length " +  '"' + polymorphismPolymorphismRejectSurroundingHomopolymerLength + '"') else ""} \
      ~{if defined(maxMaxDisplayedReads) then ("--max-displayed-reads " +  '"' + maxMaxDisplayedReads + '"') else ""} \
      ~{true="--brief-html-output" false="" briefBriefHtmlOutput} \
      ~{if defined(headerHeaderGenomeDiff) then ("--header-genome-diff " +  '"' + headerHeaderGenomeDiff + '"') else ""} \
      ~{true="--no-javascript" false="" noNoJavascript} \
      ~{true="--skip-RA-MC-prediction" false="" skipSkipRaMcPrediction} \
      ~{true="--skip-JC-prediction" false="" skipSkipJcPrediction} \
      ~{true="--skip-MC-prediction" false="" skipSkipMcPrediction} \
      ~{true="--keep-intermediates" false="" keepKeepIntermediates} \
      ~{true="--per-position-file" false="" perPerPositionFile} \
      ~{true="--junction-debug" false="" junctionJunctionDebug} \
      ~{true="--cnv" false="" cnvCnv} \
      ~{if defined(cnvCnvTileSize) then ("--cnv-tile-size " +  '"' + cnvCnvTileSize + '"') else ""} \
      ~{true="--cnv-ignore-redundant" false="" cnvCnvIgnoreRedundant}
  >>>
}