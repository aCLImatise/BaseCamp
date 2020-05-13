version 1.0

task GappaPrepareUnchunkify {
  input {
    String jJPlaceCacheSize
    String hashHashFunction
    String outOutDir
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa prepare unchunkify \
      ~{optionsOptions} \
      ~{if defined(jJPlaceCacheSize) then ("--jplace-cache-size " +  '"' + jJPlaceCacheSize + '"') else ""} \
      ~{if defined(hashHashFunction) then ("--hash-function " +  '"' + hashHashFunction + '"') else ""} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}