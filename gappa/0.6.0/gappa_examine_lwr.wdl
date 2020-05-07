version 1.0

task GappaExamineLwr {
  input {
    String jJPlacePath
    Boolean ignoreIgnoreMultiplicities
    String histogramHistogramBins
    String numNumLwrs
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
    gappa examine lwr \
      ~{optionsOptions} \
      ~{if defined(jJPlacePath) then ("--jplace-path " +  '"' + jJPlacePath + '"') else ""} \
      ~{true="--ignore-multiplicities" false="" ignoreIgnoreMultiplicities} \
      ~{if defined(histogramHistogramBins) then ("--histogram-bins " +  '"' + histogramHistogramBins + '"') else ""} \
      ~{if defined(numNumLwrs) then ("--num-lwrs " +  '"' + numNumLwrs + '"') else ""} \
      ~{true="--no-list-file" false="" noNoListFile} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(fileFilePrefix) then ("--file-prefix " +  '"' + fileFilePrefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}