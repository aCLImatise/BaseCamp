version 1.0

task BiocondaUtilsBioconductorSkeleton {
  input {
    Boolean versionedVersioned
    Boolean forceForce
    String pkgPkgVersion
    String biocBiocVersion
    Boolean recursiveRecursive
    Boolean skipSkipIfInChannels
    String loglevelLoglevel
    String logLogFile
    String logLogFileLevel
    String logLogCommandMaxLines
    String? recipeRecipeFolder
    String? configConfig
    String? packagePackage
  }
  command <<<
    bioconda-utils bioconductor-skeleton \
      ~{recipeRecipeFolder} \
      ~{true="--versioned" false="" versionedVersioned} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(pkgPkgVersion) then ("--pkg-version " +  '"' + pkgPkgVersion + '"') else ""} \
      ~{if defined(biocBiocVersion) then ("--bioc-version " +  '"' + biocBiocVersion + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--skip-if-in-channels" false="" skipSkipIfInChannels} \
      ~{if defined(loglevelLoglevel) then ("--loglevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogFileLevel) then ("--logfile-level " +  '"' + logLogFileLevel + '"') else ""} \
      ~{if defined(logLogCommandMaxLines) then ("--log-command-max-lines " +  '"' + logLogCommandMaxLines + '"') else ""} \
      ~{configConfig} \
      ~{packagePackage}
  >>>
}