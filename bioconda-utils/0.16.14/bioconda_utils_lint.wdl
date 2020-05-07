version 1.0

task BiocondaUtilsLint {
  input {
    Array[String]+ packagesPackages
    String cacheCache
    Boolean listListChecks
    Array[String]+ excludeExclude
    Boolean pushPushStatus
    String userUser
    String commitCommit
    Boolean pushPushComment
    String pullPullRequest
    String repoRepo
    Array[String]+ gitGitRange
    Boolean fullFullReport
    Boolean tryTryFix
    Boolean pdbPdb
    String loglevelLoglevel
    String logLogFile
    String logLogFileLevel
    String logLogCommandMaxLines
    String? recipeRecipeFolder
    String? configConfig
  }
  command <<<
    bioconda-utils lint \
      ~{recipeRecipeFolder} \
      ~{if defined(packagesPackages) then ("--packages " +  '"' + packagesPackages + '"') else ""} \
      ~{if defined(cacheCache) then ("--cache " +  '"' + cacheCache + '"') else ""} \
      ~{true="--list-checks" false="" listListChecks} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{true="--push-status" false="" pushPushStatus} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(commitCommit) then ("--commit " +  '"' + commitCommit + '"') else ""} \
      ~{true="--push-comment" false="" pushPushComment} \
      ~{if defined(pullPullRequest) then ("--pull-request " +  '"' + pullPullRequest + '"') else ""} \
      ~{if defined(repoRepo) then ("--repo " +  '"' + repoRepo + '"') else ""} \
      ~{if defined(gitGitRange) then ("--git-range " +  '"' + gitGitRange + '"') else ""} \
      ~{true="--full-report" false="" fullFullReport} \
      ~{true="--try-fix" false="" tryTryFix} \
      ~{true="--pdb" false="" pdbPdb} \
      ~{if defined(loglevelLoglevel) then ("--loglevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogFileLevel) then ("--logfile-level " +  '"' + logLogFileLevel + '"') else ""} \
      ~{if defined(logLogCommandMaxLines) then ("--log-command-max-lines " +  '"' + logLogCommandMaxLines + '"') else ""} \
      ~{configConfig}
  >>>
}