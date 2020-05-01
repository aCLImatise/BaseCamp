version 1.0

task Velvetg {
  input {
    Boolean scaffoldingScaffolding
    Int maxMaxBranchLength
    Float maxMaxDivergence
    Int maxMaxGapCount
    Int minMinPairCount
    Float maxMaxCoverage
    Int coverageCoverageMask
    Int longLongMultCutOff
    Boolean unusedUnusedReads
    Boolean alignmentsAlignments
    Boolean exportExportFiltered
    Boolean cleanClean
    Boolean veryVeryClean
    String pairedPairedExpFraction
    Boolean shortShortMatePaired
    Boolean conserveConserveLong
    Directory? directoryDirectory
  }
  command <<<
    velvetg \
      ~{directoryDirectory} \
      ~{true="-scaffolding" false="" scaffoldingScaffolding} \
      ~{if defined(maxMaxBranchLength) then ("-max_branch_length " +  '"' + maxMaxBranchLength + '"') else ""} \
      ~{if defined(maxMaxDivergence) then ("-max_divergence " +  '"' + maxMaxDivergence + '"') else ""} \
      ~{if defined(maxMaxGapCount) then ("-max_gap_count " +  '"' + maxMaxGapCount + '"') else ""} \
      ~{if defined(minMinPairCount) then ("-min_pair_count " +  '"' + minMinPairCount + '"') else ""} \
      ~{if defined(maxMaxCoverage) then ("-max_coverage " +  '"' + maxMaxCoverage + '"') else ""} \
      ~{if defined(coverageCoverageMask) then ("-coverage_mask " +  '"' + coverageCoverageMask + '"') else ""} \
      ~{if defined(longLongMultCutOff) then ("-long_mult_cutoff " +  '"' + longLongMultCutOff + '"') else ""} \
      ~{true="-unused_reads" false="" unusedUnusedReads} \
      ~{true="-alignments" false="" alignmentsAlignments} \
      ~{true="-exportFiltered" false="" exportExportFiltered} \
      ~{true="-clean" false="" cleanClean} \
      ~{true="-very_clean" false="" veryVeryClean} \
      ~{if defined(pairedPairedExpFraction) then ("-paired_exp_fraction " +  '"' + pairedPairedExpFraction + '"') else ""} \
      ~{true="-shortMatePaired" false="" shortShortMatePaired} \
      ~{true="-conserveLong" false="" conserveConserveLong}
  >>>
}