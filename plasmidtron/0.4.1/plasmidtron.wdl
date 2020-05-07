version 1.0

task Plasmidtron {
  input {
    String actionAction
    Boolean keepKeepFiles
    String kmKmEr
    Int minMinContigLen
    Int minMinSpadesContigCoverage
    Int maxMaxSpadesContigCoverage
    Int minMinKmErsThreshold
    Int maxMaxKmErsThreshold
    Int minMinControlsKmErsThreshold
    Int maxMaxControlsKmErsThreshold
    Int minMinKmErsPerRead
    Boolean matchMatchBothPairs
    String plotPlotFilename
    Boolean kmKmErPlot
    String spadesSpadesExec
    String threadsThreads
    Boolean verboseVerbose
    String? outputOutputDirectory
    File? fileFileOfTraits
    File? fileFileOfNonTraits
  }
  command <<<
    plasmidtron \
      ~{outputOutputDirectory} \
      ~{if defined(actionAction) then ("--action " +  '"' + actionAction + '"') else ""} \
      ~{true="--keep_files" false="" keepKeepFiles} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(minMinContigLen) then ("--min_contig_len " +  '"' + minMinContigLen + '"') else ""} \
      ~{if defined(minMinSpadesContigCoverage) then ("--min_spades_contig_coverage " +  '"' + minMinSpadesContigCoverage + '"') else ""} \
      ~{if defined(maxMaxSpadesContigCoverage) then ("--max_spades_contig_coverage " +  '"' + maxMaxSpadesContigCoverage + '"') else ""} \
      ~{if defined(minMinKmErsThreshold) then ("--min_kmers_threshold " +  '"' + minMinKmErsThreshold + '"') else ""} \
      ~{if defined(maxMaxKmErsThreshold) then ("--max_kmers_threshold " +  '"' + maxMaxKmErsThreshold + '"') else ""} \
      ~{if defined(minMinControlsKmErsThreshold) then ("--min_controls_kmers_threshold " +  '"' + minMinControlsKmErsThreshold + '"') else ""} \
      ~{if defined(maxMaxControlsKmErsThreshold) then ("--max_controls_kmers_threshold " +  '"' + maxMaxControlsKmErsThreshold + '"') else ""} \
      ~{if defined(minMinKmErsPerRead) then ("--min_kmers_per_read " +  '"' + minMinKmErsPerRead + '"') else ""} \
      ~{true="--match_both_pairs" false="" matchMatchBothPairs} \
      ~{if defined(plotPlotFilename) then ("--plot_filename " +  '"' + plotPlotFilename + '"') else ""} \
      ~{true="--kmer_plot" false="" kmKmErPlot} \
      ~{if defined(spadesSpadesExec) then ("--spades_exec " +  '"' + spadesSpadesExec + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{fileFileOfTraits} \
      ~{fileFileOfNonTraits}
  >>>
}