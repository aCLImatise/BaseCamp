version 1.0

task Plotkmers {
  input {
    String plotPlotFilename
    String kmKmEr
    Int maxMaxKmErsThreshold
    Int maxMaxKmErsToShow
    String threadsThreads
    Boolean keepKeepFiles
    Boolean verboseVerbose
    String? outputOutputDirectory
    String? assembliesAssemblies
  }
  command <<<
    plotkmers \
      ~{outputOutputDirectory} \
      ~{if defined(plotPlotFilename) then ("--plot_filename " +  '"' + plotPlotFilename + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(maxMaxKmErsThreshold) then ("--max_kmers_threshold " +  '"' + maxMaxKmErsThreshold + '"') else ""} \
      ~{if defined(maxMaxKmErsToShow) then ("--max_kmers_to_show " +  '"' + maxMaxKmErsToShow + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--keep_files" false="" keepKeepFiles} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{assembliesAssemblies}
  >>>
}