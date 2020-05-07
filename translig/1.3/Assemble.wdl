version 1.0

task Assemble {
  input {
    Boolean kmKmErLength
    Boolean doubleDoubleStrandedMode
    Boolean frFrStrand
    Boolean pairedPairedEnd
    Int minMinSeedCoverage
    Float minMinSeedEntropy
    Int minMinKmErCoverage
    Float minMinKmErEntropy
    Int minMinJunctionCoverage
    Float minMinRatioNonError
    Boolean pairPairGapLength
    Boolean outOutDir
  }
  command <<<
    Assemble \
      ~{true="--kmer_length" false="" kmKmErLength} \
      ~{true="--double_stranded_mode" false="" doubleDoubleStrandedMode} \
      ~{true="--fr_strand" false="" frFrStrand} \
      ~{true="--paired_end" false="" pairedPairedEnd} \
      ~{if defined(minMinSeedCoverage) then ("--min_seed_coverage " +  '"' + minMinSeedCoverage + '"') else ""} \
      ~{if defined(minMinSeedEntropy) then ("--min_seed_entropy " +  '"' + minMinSeedEntropy + '"') else ""} \
      ~{if defined(minMinKmErCoverage) then ("--min_kmer_coverage " +  '"' + minMinKmErCoverage + '"') else ""} \
      ~{if defined(minMinKmErEntropy) then ("--min_kmer_entropy " +  '"' + minMinKmErEntropy + '"') else ""} \
      ~{if defined(minMinJunctionCoverage) then ("--min_junction_coverage " +  '"' + minMinJunctionCoverage + '"') else ""} \
      ~{if defined(minMinRatioNonError) then ("--min_ratio_non_error " +  '"' + minMinRatioNonError + '"') else ""} \
      ~{true="--pair_gap_length" false="" pairPairGapLength} \
      ~{true="--out_dir" false="" outOutDir}
  >>>
}