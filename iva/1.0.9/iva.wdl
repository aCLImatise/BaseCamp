version 1.0

task Iva {
  input {
    File fF
    File rR
    File frFr
    Boolean keepKeepFiles
    File contigsContigs
    File referenceReference
    Boolean verboseVerbose
    Int sSMaltK
    Int sSMaltS
    Float sSMaltId
    Int ctgCtgFirstTrim
    Int ctgCtgIterTrim
    Int extExtMinCov
    Float extExtMinRatio
    Int extExtMaxBases
    Int extExtMinClip
    Int maxMaxContigs
    Boolean makeMakeNewSeeds
    Int seedSeedStartLength
    Int seedSeedStopLength
    Int seedSeedMinKmErCov
    Int seedSeedMaxKmErCov
    Int seedSeedExtMaxBases
    Int seedSeedOverlapLength
    Int seedSeedExtMinCov
    Float seedSeedExtMinRatio
    File trimTrimMoMatic
    String trimTrimMoQual
    File adaptersAdapters
    Int minMinTrimmedLength
    File pcrPcrPrimers
    Int maxMaxInsert
    Int threadsThreads
    Boolean kmcKmcOneThread
    Float strandStrandBias
    Boolean testTest
  }
  command <<<
    iva \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(frFr) then ("--fr " +  '"' + frFr + '"') else ""} \
      ~{true="--keep_files" false="" keepKeepFiles} \
      ~{if defined(contigsContigs) then ("--contigs " +  '"' + contigsContigs + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(sSMaltK) then ("--smalt_k " +  '"' + sSMaltK + '"') else ""} \
      ~{if defined(sSMaltS) then ("--smalt_s " +  '"' + sSMaltS + '"') else ""} \
      ~{if defined(sSMaltId) then ("--smalt_id " +  '"' + sSMaltId + '"') else ""} \
      ~{if defined(ctgCtgFirstTrim) then ("--ctg_first_trim " +  '"' + ctgCtgFirstTrim + '"') else ""} \
      ~{if defined(ctgCtgIterTrim) then ("--ctg_iter_trim " +  '"' + ctgCtgIterTrim + '"') else ""} \
      ~{if defined(extExtMinCov) then ("--ext_min_cov " +  '"' + extExtMinCov + '"') else ""} \
      ~{if defined(extExtMinRatio) then ("--ext_min_ratio " +  '"' + extExtMinRatio + '"') else ""} \
      ~{if defined(extExtMaxBases) then ("--ext_max_bases " +  '"' + extExtMaxBases + '"') else ""} \
      ~{if defined(extExtMinClip) then ("--ext_min_clip " +  '"' + extExtMinClip + '"') else ""} \
      ~{if defined(maxMaxContigs) then ("--max_contigs " +  '"' + maxMaxContigs + '"') else ""} \
      ~{true="--make_new_seeds" false="" makeMakeNewSeeds} \
      ~{if defined(seedSeedStartLength) then ("--seed_start_length " +  '"' + seedSeedStartLength + '"') else ""} \
      ~{if defined(seedSeedStopLength) then ("--seed_stop_length " +  '"' + seedSeedStopLength + '"') else ""} \
      ~{if defined(seedSeedMinKmErCov) then ("--seed_min_kmer_cov " +  '"' + seedSeedMinKmErCov + '"') else ""} \
      ~{if defined(seedSeedMaxKmErCov) then ("--seed_max_kmer_cov " +  '"' + seedSeedMaxKmErCov + '"') else ""} \
      ~{if defined(seedSeedExtMaxBases) then ("--seed_ext_max_bases " +  '"' + seedSeedExtMaxBases + '"') else ""} \
      ~{if defined(seedSeedOverlapLength) then ("--seed_overlap_length " +  '"' + seedSeedOverlapLength + '"') else ""} \
      ~{if defined(seedSeedExtMinCov) then ("--seed_ext_min_cov " +  '"' + seedSeedExtMinCov + '"') else ""} \
      ~{if defined(seedSeedExtMinRatio) then ("--seed_ext_min_ratio " +  '"' + seedSeedExtMinRatio + '"') else ""} \
      ~{if defined(trimTrimMoMatic) then ("--trimmomatic " +  '"' + trimTrimMoMatic + '"') else ""} \
      ~{if defined(trimTrimMoQual) then ("--trimmo_qual " +  '"' + trimTrimMoQual + '"') else ""} \
      ~{if defined(adaptersAdapters) then ("--adapters " +  '"' + adaptersAdapters + '"') else ""} \
      ~{if defined(minMinTrimmedLength) then ("--min_trimmed_length " +  '"' + minMinTrimmedLength + '"') else ""} \
      ~{if defined(pcrPcrPrimers) then ("--pcr_primers " +  '"' + pcrPcrPrimers + '"') else ""} \
      ~{if defined(maxMaxInsert) then ("--max_insert " +  '"' + maxMaxInsert + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--kmc_onethread" false="" kmcKmcOneThread} \
      ~{if defined(strandStrandBias) then ("--strand_bias " +  '"' + strandStrandBias + '"') else ""} \
      ~{true="--test" false="" testTest}
  >>>
}