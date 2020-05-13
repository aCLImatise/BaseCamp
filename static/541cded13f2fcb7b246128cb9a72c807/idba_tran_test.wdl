version 1.0

task IdbaTranTest {
  input {
    String outOut
    String readRead
    String longLongRead
    String minkMink
    String maxMaxK
    String stepStep
    String innerInnerMink
    String innerInnerStep
    String prefixPrefix
    String minMinCount
    String minMinSupport
    String numNumThreads
    String seedSeedKmEr
    String minMinContig
    String similarSimilar
    String maxMaxMismatch
    Boolean noNoLocal
    Boolean noNoCoverage
    Boolean noNoCorrect
    Boolean prePreCorrection
    String maxMaxIsoforms
    String maxMaxComponentSize
    String? iIDbaTran
  }
  command <<<
    idba_tran_test \
      ~{iIDbaTran} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(readRead) then ("--read " +  '"' + readRead + '"') else ""} \
      ~{if defined(longLongRead) then ("--long_read " +  '"' + longLongRead + '"') else ""} \
      ~{if defined(minkMink) then ("--mink " +  '"' + minkMink + '"') else ""} \
      ~{if defined(maxMaxK) then ("--maxk " +  '"' + maxMaxK + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(innerInnerMink) then ("--inner_mink " +  '"' + innerInnerMink + '"') else ""} \
      ~{if defined(innerInnerStep) then ("--inner_step " +  '"' + innerInnerStep + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(minMinCount) then ("--min_count " +  '"' + minMinCount + '"') else ""} \
      ~{if defined(minMinSupport) then ("--min_support " +  '"' + minMinSupport + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(seedSeedKmEr) then ("--seed_kmer " +  '"' + seedSeedKmEr + '"') else ""} \
      ~{if defined(minMinContig) then ("--min_contig " +  '"' + minMinContig + '"') else ""} \
      ~{if defined(similarSimilar) then ("--similar " +  '"' + similarSimilar + '"') else ""} \
      ~{if defined(maxMaxMismatch) then ("--max_mismatch " +  '"' + maxMaxMismatch + '"') else ""} \
      ~{true="--no_local" false="" noNoLocal} \
      ~{true="--no_coverage" false="" noNoCoverage} \
      ~{true="--no_correct" false="" noNoCorrect} \
      ~{true="--pre_correction" false="" prePreCorrection} \
      ~{if defined(maxMaxIsoforms) then ("--max_isoforms " +  '"' + maxMaxIsoforms + '"') else ""} \
      ~{if defined(maxMaxComponentSize) then ("--max_component_size " +  '"' + maxMaxComponentSize + '"') else ""}
  >>>
}