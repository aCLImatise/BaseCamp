version 1.0

task GappaExamineInfo {
  input {
    String jJPlacePath
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa examine info \
      ~{optionsOptions} \
      ~{if defined(jJPlacePath) then ("--jplace-path " +  '"' + jJPlacePath + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}