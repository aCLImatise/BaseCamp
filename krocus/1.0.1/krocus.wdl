version 1.0

task Krocus {
  input {
    String filteredFilteredReadsFile
    String outputOutputFile
    Int maxMaxGap
    String marginMargin
    Int minMinBlockSize
    Int minMinFastAHits
    Int minMinKmErsForOneXPass
    Int maxMaxKmErs
    String printPrintInterval
    String kmKmEr
    Boolean divisibleDivisibleBy3
    String targetTargetSt
    Boolean verboseVerbose
  }
  command <<<
    krocus \
      ~{if defined(filteredFilteredReadsFile) then ("--filtered_reads_file " +  '"' + filteredFilteredReadsFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(maxMaxGap) then ("--max_gap " +  '"' + maxMaxGap + '"') else ""} \
      ~{if defined(marginMargin) then ("--margin " +  '"' + marginMargin + '"') else ""} \
      ~{if defined(minMinBlockSize) then ("--min_block_size " +  '"' + minMinBlockSize + '"') else ""} \
      ~{if defined(minMinFastAHits) then ("--min_fasta_hits " +  '"' + minMinFastAHits + '"') else ""} \
      ~{if defined(minMinKmErsForOneXPass) then ("--min_kmers_for_onex_pass " +  '"' + minMinKmErsForOneXPass + '"') else ""} \
      ~{if defined(maxMaxKmErs) then ("--max_kmers " +  '"' + maxMaxKmErs + '"') else ""} \
      ~{if defined(printPrintInterval) then ("--print_interval " +  '"' + printPrintInterval + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{true="--divisible_by_3" false="" divisibleDivisibleBy3} \
      ~{if defined(targetTargetSt) then ("--target_st " +  '"' + targetTargetSt + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}