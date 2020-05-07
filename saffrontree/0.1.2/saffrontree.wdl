version 1.0

task Saffrontree {
  input {
    String kmKmEr
    Int minMinKmErsThreshold
    Int maxMaxKmErsThreshold
    String threadsThreads
    Boolean keepKeepFiles
    Boolean verboseVerbose
    String? outputOutputDirectory
    String? inputInputFiles
  }
  command <<<
    saffrontree \
      ~{outputOutputDirectory} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(minMinKmErsThreshold) then ("--min_kmers_threshold " +  '"' + minMinKmErsThreshold + '"') else ""} \
      ~{if defined(maxMaxKmErsThreshold) then ("--max_kmers_threshold " +  '"' + maxMaxKmErsThreshold + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--keep_files" false="" keepKeepFiles} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{inputInputFiles}
  >>>
}