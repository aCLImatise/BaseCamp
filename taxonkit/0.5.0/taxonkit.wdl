version 1.0

task Taxonkit {
  input {
    String dataDataDir
    Boolean lineLineBuffered
    String outOutFile
    Int threadsThreads
    Boolean verboseVerbose
    String? versionVersion
  }
  command <<<
    taxonkit \
      ~{versionVersion} \
      ~{if defined(dataDataDir) then ("--data-dir " +  '"' + dataDataDir + '"') else ""} \
      ~{true="--line-buffered" false="" lineLineBuffered} \
      ~{if defined(outOutFile) then ("--out-file " +  '"' + outOutFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}