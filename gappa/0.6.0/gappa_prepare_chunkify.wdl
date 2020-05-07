version 1.0

task GappaPrepareChunkify {
  input {
    String fastFastAPath
    String chunkChunkSize
    String minMinAbundance
    String hashHashFunction
    String chunksChunksOutDir
    String chunkChunkFilePrefix
    String abundancesAbundancesOutDir
    String abundanceAbundanceFilePrefix
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa prepare chunkify \
      ~{optionsOptions} \
      ~{if defined(fastFastAPath) then ("--fasta-path " +  '"' + fastFastAPath + '"') else ""} \
      ~{if defined(chunkChunkSize) then ("--chunk-size " +  '"' + chunkChunkSize + '"') else ""} \
      ~{if defined(minMinAbundance) then ("--min-abundance " +  '"' + minMinAbundance + '"') else ""} \
      ~{if defined(hashHashFunction) then ("--hash-function " +  '"' + hashHashFunction + '"') else ""} \
      ~{if defined(chunksChunksOutDir) then ("--chunks-out-dir " +  '"' + chunksChunksOutDir + '"') else ""} \
      ~{if defined(chunkChunkFilePrefix) then ("--chunk-file-prefix " +  '"' + chunkChunkFilePrefix + '"') else ""} \
      ~{if defined(abundancesAbundancesOutDir) then ("--abundances-out-dir " +  '"' + abundancesAbundancesOutDir + '"') else ""} \
      ~{if defined(abundanceAbundanceFilePrefix) then ("--abundance-file-prefix " +  '"' + abundanceAbundanceFilePrefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}