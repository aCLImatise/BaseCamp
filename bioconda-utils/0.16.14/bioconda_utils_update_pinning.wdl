version 1.0

task BiocondaUtilsUpdatePinning {
  input {
    Boolean bumpBumpOnlyPython
    String cacheCache
    Boolean pdbPdb
    String threadsThreads
    String loglevelLoglevel
    String logLogFile
    String logLogFileLevel
    String logLogCommandMaxLines
    String? recipeRecipeFolder
    String? configConfig
  }
  command <<<
    bioconda-utils update-pinning \
      ~{recipeRecipeFolder} \
      ~{true="--bump-only-python" false="" bumpBumpOnlyPython} \
      ~{if defined(cacheCache) then ("--cache " +  '"' + cacheCache + '"') else ""} \
      ~{true="--pdb" false="" pdbPdb} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(loglevelLoglevel) then ("--loglevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogFileLevel) then ("--logfile-level " +  '"' + logLogFileLevel + '"') else ""} \
      ~{if defined(logLogCommandMaxLines) then ("--log-command-max-lines " +  '"' + logLogCommandMaxLines + '"') else ""} \
      ~{configConfig}
  >>>
}