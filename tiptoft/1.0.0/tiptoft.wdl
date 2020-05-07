version 1.0

task Tiptoft {
  input {
    String plasmidPlasmidData
    String kmKmEr
    String filteredFilteredReadsFile
    String outputOutputFile
    String printPrintInterval
    Boolean verboseVerbose
    Boolean noNoHcCompression
    Boolean noNoGeneFilter
    Int maxMaxGap
    Int maxMaxKmErCount
    String marginMargin
    Int minMinBlockSize
    Int minMinFastAHits
    Int minMinPercCoverage
    Int minMinKmErsForOneXPass
  }
  command <<<
    tiptoft \
      ~{if defined(plasmidPlasmidData) then ("--plasmid_data " +  '"' + plasmidPlasmidData + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(filteredFilteredReadsFile) then ("--filtered_reads_file " +  '"' + filteredFilteredReadsFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(printPrintInterval) then ("--print_interval " +  '"' + printPrintInterval + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--no_hc_compression" false="" noNoHcCompression} \
      ~{true="--no_gene_filter" false="" noNoGeneFilter} \
      ~{if defined(maxMaxGap) then ("--max_gap " +  '"' + maxMaxGap + '"') else ""} \
      ~{if defined(maxMaxKmErCount) then ("--max_kmer_count " +  '"' + maxMaxKmErCount + '"') else ""} \
      ~{if defined(marginMargin) then ("--margin " +  '"' + marginMargin + '"') else ""} \
      ~{if defined(minMinBlockSize) then ("--min_block_size " +  '"' + minMinBlockSize + '"') else ""} \
      ~{if defined(minMinFastAHits) then ("--min_fasta_hits " +  '"' + minMinFastAHits + '"') else ""} \
      ~{if defined(minMinPercCoverage) then ("--min_perc_coverage " +  '"' + minMinPercCoverage + '"') else ""} \
      ~{if defined(minMinKmErsForOneXPass) then ("--min_kmers_for_onex_pass " +  '"' + minMinKmErsForOneXPass + '"') else ""}
  >>>
}