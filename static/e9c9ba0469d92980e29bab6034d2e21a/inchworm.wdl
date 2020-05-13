version 1.0

task Inchworm {
  input {
    Boolean readsReads
    Boolean kmKmErs
    String kmKmErFilesListing
    Boolean runRunInchworm
    Int kK
    Int minkMinkMerCount
    Int lL
    Boolean minMinAssemblyCoverage
    String coverageCoverageOutfile
    Boolean dsDs
    Boolean noNoPruneErrorKmErs
    Float minMinRatioNonError
    Int numNumThreads
    Int monitorMonitor
    Boolean showShowAdvanced
    String? optsOpts
  }
  command <<<
    inchworm \
      ~{optsOpts} \
      ~{true="--reads" false="" readsReads} \
      ~{true="--kmers" false="" kmKmErs} \
      ~{if defined(kmKmErFilesListing) then ("--kmer_files_listing " +  '"' + kmKmErFilesListing + '"') else ""} \
      ~{true="--run_inchworm" false="" runRunInchworm} \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(minkMinkMerCount) then ("--minKmerCount " +  '"' + minkMinkMerCount + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{true="--min_assembly_coverage" false="" minMinAssemblyCoverage} \
      ~{if defined(coverageCoverageOutfile) then ("--coverage_outfile " +  '"' + coverageCoverageOutfile + '"') else ""} \
      ~{true="--DS" false="" dsDs} \
      ~{true="--no_prune_error_kmers" false="" noNoPruneErrorKmErs} \
      ~{if defined(minMinRatioNonError) then ("--min_ratio_non_error " +  '"' + minMinRatioNonError + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(monitorMonitor) then ("--monitor " +  '"' + monitorMonitor + '"') else ""} \
      ~{true="--show_advanced" false="" showShowAdvanced}
  >>>
}