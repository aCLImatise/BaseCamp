version 1.0

task BiocondaUtilsAutobump {
  input {
    Array[String]+ packagesPackages
    Array[String]+ excludeExclude
    String cacheCache
    String failedFailedUrls
    String unparsedUnparsedUrls
    String recipeRecipeStatus
    String excludeExcludeSubRecipes
    Array[String]+ excludeExcludeChannels
    Boolean ignoreIgnoreBlacklists
    Boolean fetchFetchRequirements
    Boolean checkCheckBranch
    Boolean createCreateBranch
    Boolean createCreatePr
    Boolean onlyOnlyActive
    Boolean noNoShuffle
    Int maxMaxUpdates
    Boolean dryDryRun
    Boolean noNoCheckPInnings
    Boolean noNoFollowGraph
    Boolean noNoCheckVersionUpdate
    Boolean noNoCheckPendingDeps
    Boolean bumpBumpOnlyPython
    Boolean signSign
    String commitCommitAs
    String threadsThreads
    Boolean pdbPdb
    String loglevelLoglevel
    String logLogFile
    String logLogFileLevel
    String logLogCommandMaxLines
    String? recipeRecipeFolder
    String? configConfig
  }
  command <<<
    bioconda-utils autobump \
      ~{recipeRecipeFolder} \
      ~{if defined(packagesPackages) then ("--packages " +  '"' + packagesPackages + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(cacheCache) then ("--cache " +  '"' + cacheCache + '"') else ""} \
      ~{if defined(failedFailedUrls) then ("--failed-urls " +  '"' + failedFailedUrls + '"') else ""} \
      ~{if defined(unparsedUnparsedUrls) then ("--unparsed-urls " +  '"' + unparsedUnparsedUrls + '"') else ""} \
      ~{if defined(recipeRecipeStatus) then ("--recipe-status " +  '"' + recipeRecipeStatus + '"') else ""} \
      ~{if defined(excludeExcludeSubRecipes) then ("--exclude-subrecipes " +  '"' + excludeExcludeSubRecipes + '"') else ""} \
      ~{if defined(excludeExcludeChannels) then ("--exclude-channels " +  '"' + excludeExcludeChannels + '"') else ""} \
      ~{true="--ignore-blacklists" false="" ignoreIgnoreBlacklists} \
      ~{true="--fetch-requirements" false="" fetchFetchRequirements} \
      ~{true="--check-branch" false="" checkCheckBranch} \
      ~{true="--create-branch" false="" createCreateBranch} \
      ~{true="--create-pr" false="" createCreatePr} \
      ~{true="--only-active" false="" onlyOnlyActive} \
      ~{true="--no-shuffle" false="" noNoShuffle} \
      ~{if defined(maxMaxUpdates) then ("--max-updates " +  '"' + maxMaxUpdates + '"') else ""} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--no-check-pinnings" false="" noNoCheckPInnings} \
      ~{true="--no-follow-graph" false="" noNoFollowGraph} \
      ~{true="--no-check-version-update" false="" noNoCheckVersionUpdate} \
      ~{true="--no-check-pending-deps" false="" noNoCheckPendingDeps} \
      ~{true="--bump-only-python" false="" bumpBumpOnlyPython} \
      ~{true="--sign" false="" signSign} \
      ~{if defined(commitCommitAs) then ("--commit-as " +  '"' + commitCommitAs + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--pdb" false="" pdbPdb} \
      ~{if defined(loglevelLoglevel) then ("--loglevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogFileLevel) then ("--logfile-level " +  '"' + logLogFileLevel + '"') else ""} \
      ~{if defined(logLogCommandMaxLines) then ("--log-command-max-lines " +  '"' + logLogCommandMaxLines + '"') else ""} \
      ~{configConfig}
  >>>
}