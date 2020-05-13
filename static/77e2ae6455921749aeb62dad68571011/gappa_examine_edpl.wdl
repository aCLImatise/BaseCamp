version 1.0

task GappaExamineEdpl {
  input {
    String jJPlacePath
    String histogramHistogramBins
    Float histogramHistogramMax
    Boolean noNoListFile
    String outOutDir
    String fileFilePrefix
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa examine edpl \
      ~{optionsOptions} \
      ~{if defined(jJPlacePath) then ("--jplace-path " +  '"' + jJPlacePath + '"') else ""} \
      ~{if defined(histogramHistogramBins) then ("--histogram-bins " +  '"' + histogramHistogramBins + '"') else ""} \
      ~{if defined(histogramHistogramMax) then ("--histogram-max " +  '"' + histogramHistogramMax + '"') else ""} \
      ~{true="--no-list-file" false="" noNoListFile} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(fileFilePrefix) then ("--file-prefix " +  '"' + fileFilePrefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}