version 1.0

task PhyluceUtilitiesCleanupTrinity {
  input {
    File pathPathToClean
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_utilities_cleanup_trinity \
      ~{if defined(pathPathToClean) then ("--path-to-clean " +  '"' + pathPathToClean + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}