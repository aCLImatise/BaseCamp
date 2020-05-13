version 1.0

task Skesa {
  input {
    Boolean vV
    String coresCores
    String memoryMemory
    Boolean hashHashCount
    String estimatedEstimatedKmErs
    Boolean skipSkipBloomFilter
    String fastFastA
    String fastFastQ
    Boolean useUsePairedEnds
    String contigsContigsOut
    String kmKmEr
    String minMinCount
    String maxMaxKmErCount
    String vectorVectorPercent
    String insertInsertSize
    String stepsSteps
    String fractionFraction
    String maxMaxSnpLen
    String minMinContig
    Boolean allowAllowSnps
    Boolean forceForceSingleEnds
    String seedsSeeds
    String allAll
    String dbgDbgOut
    String histHist
    String connectedConnectedReads
  }
  command <<<
    skesa \
      ~{true="-v" false="" vV} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""} \
      ~{true="--hash_count" false="" hashHashCount} \
      ~{if defined(estimatedEstimatedKmErs) then ("--estimated_kmers " +  '"' + estimatedEstimatedKmErs + '"') else ""} \
      ~{true="--skip_bloom_filter" false="" skipSkipBloomFilter} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{true="--use_paired_ends" false="" useUsePairedEnds} \
      ~{if defined(contigsContigsOut) then ("--contigs_out " +  '"' + contigsContigsOut + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(minMinCount) then ("--min_count " +  '"' + minMinCount + '"') else ""} \
      ~{if defined(maxMaxKmErCount) then ("--max_kmer_count " +  '"' + maxMaxKmErCount + '"') else ""} \
      ~{if defined(vectorVectorPercent) then ("--vector_percent " +  '"' + vectorVectorPercent + '"') else ""} \
      ~{if defined(insertInsertSize) then ("--insert_size " +  '"' + insertInsertSize + '"') else ""} \
      ~{if defined(stepsSteps) then ("--steps " +  '"' + stepsSteps + '"') else ""} \
      ~{if defined(fractionFraction) then ("--fraction " +  '"' + fractionFraction + '"') else ""} \
      ~{if defined(maxMaxSnpLen) then ("--max_snp_len " +  '"' + maxMaxSnpLen + '"') else ""} \
      ~{if defined(minMinContig) then ("--min_contig " +  '"' + minMinContig + '"') else ""} \
      ~{true="--allow_snps" false="" allowAllowSnps} \
      ~{true="--force_single_ends" false="" forceForceSingleEnds} \
      ~{if defined(seedsSeeds) then ("--seeds " +  '"' + seedsSeeds + '"') else ""} \
      ~{if defined(allAll) then ("--all " +  '"' + allAll + '"') else ""} \
      ~{if defined(dbgDbgOut) then ("--dbg_out " +  '"' + dbgDbgOut + '"') else ""} \
      ~{if defined(histHist) then ("--hist " +  '"' + histHist + '"') else ""} \
      ~{if defined(connectedConnectedReads) then ("--connected_reads " +  '"' + connectedConnectedReads + '"') else ""}
  >>>
}