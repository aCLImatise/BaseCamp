version 1.0

task Idba {
  input {
    String outOut
    String readRead
    String readReadLevel2
    String readReadLevel3
    String readReadLevel4
    String readReadLevel5
    String longLongRead
    String minkMink
    String maxMaxK
    String stepStep
    String prefixPrefix
    String minMinCount
    String minMinSupport
    String numNumThreads
    String seedSeedKmEr
    String minMinContig
    String similarSimilar
    String maxMaxMismatch
    String minMinPairs
    Boolean noNoCoverage
    Boolean noNoCorrect
    Boolean prePreCorrection
    String? iIDbaUd
  }
  command <<<
    idba \
      ~{iIDbaUd} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(readRead) then ("--read " +  '"' + readRead + '"') else ""} \
      ~{if defined(readReadLevel2) then ("--read_level_2 " +  '"' + readReadLevel2 + '"') else ""} \
      ~{if defined(readReadLevel3) then ("--read_level_3 " +  '"' + readReadLevel3 + '"') else ""} \
      ~{if defined(readReadLevel4) then ("--read_level_4 " +  '"' + readReadLevel4 + '"') else ""} \
      ~{if defined(readReadLevel5) then ("--read_level_5 " +  '"' + readReadLevel5 + '"') else ""} \
      ~{if defined(longLongRead) then ("--long_read " +  '"' + longLongRead + '"') else ""} \
      ~{if defined(minkMink) then ("--mink " +  '"' + minkMink + '"') else ""} \
      ~{if defined(maxMaxK) then ("--maxk " +  '"' + maxMaxK + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(minMinCount) then ("--min_count " +  '"' + minMinCount + '"') else ""} \
      ~{if defined(minMinSupport) then ("--min_support " +  '"' + minMinSupport + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(seedSeedKmEr) then ("--seed_kmer " +  '"' + seedSeedKmEr + '"') else ""} \
      ~{if defined(minMinContig) then ("--min_contig " +  '"' + minMinContig + '"') else ""} \
      ~{if defined(similarSimilar) then ("--similar " +  '"' + similarSimilar + '"') else ""} \
      ~{if defined(maxMaxMismatch) then ("--max_mismatch " +  '"' + maxMaxMismatch + '"') else ""} \
      ~{if defined(minMinPairs) then ("--min_pairs " +  '"' + minMinPairs + '"') else ""} \
      ~{true="--no_coverage" false="" noNoCoverage} \
      ~{true="--no_correct" false="" noNoCorrect} \
      ~{true="--pre_correction" false="" prePreCorrection}
  >>>
}