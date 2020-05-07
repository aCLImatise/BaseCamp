version 1.0

task GappaExamineGraft {
  input {
    String jJPlacePath
    Boolean fullyFullyResolve
    String nameNamePrefix
    String outOutDir
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa examine graft \
      ~{optionsOptions} \
      ~{if defined(jJPlacePath) then ("--jplace-path " +  '"' + jJPlacePath + '"') else ""} \
      ~{true="--fully-resolve" false="" fullyFullyResolve} \
      ~{if defined(nameNamePrefix) then ("--name-prefix " +  '"' + nameNamePrefix + '"') else ""} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}