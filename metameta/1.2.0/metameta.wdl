version 1.0

task Metameta {
  input {
    String profileProfile
    File snakeSnakeFile
    Boolean guiGui
    Boolean coresCores
    String localLocalCores
    Boolean resourcesResources
    Boolean configConfig
    File configConfigFile
    Boolean listList
    Boolean listListTargetRules
    String directoryDirectory
    Boolean dryDryRun
    Boolean printPrintShellCmds
    Boolean debugDebugDag
    Boolean dagDag
    Boolean forceForceUseThreads
    Boolean ruleRuleGraph
    Boolean d3dagD3dag
    Boolean summarySummary
    Boolean detailedDetailedSummary
    File archiveArchive
    Boolean touchTouch
    Boolean keepKeepGoing
    Boolean forceForce
    Boolean forceForceAll
    Boolean forceForceRun
    Array[String]+ prioritizePrioritize
    Array[String]+ untilUntil
    Array[String]+ omitOmitFrom
    Boolean allowAllowAmbiguity
    String clusterCluster
    String clusterClusterSync
    Boolean drmaaDrmaa
    String drmaaDrmaaLogDir
    File clusterClusterConfig
    Boolean immediateImmediateSubmit
    String jobJobScript
    String jobJobName
    String clusterClusterStatus
    Boolean kuKuBernetEs
    Array[String]+ kuKuBernetEsEnv
    String containerContainerImage
    Boolean reasonReason
    File statsStats
    Boolean noNoColor
    Boolean quietQuiet
    Boolean noNoLock
    Boolean unlockUnlock
    Array[File]+ cleanupCleanupMetadata
    Boolean rerunRerunIncomplete
    Boolean ignoreIgnoreIncomplete
    Boolean listListVersionChanges
    Boolean listListCodeChanges
    Boolean listListInputChanges
    Boolean listListParamsChanges
    String latencyLatencyWait
    Boolean waitWaitForFiles
    String benchmarkBenchmarkRepeats
    Boolean noNoTemp
    Boolean keepKeepRemote
    Boolean keepKeepTargetFiles
    Boolean keepKeepShadow
    Array[String]+ allowedAllowedRules
    Int maxMaxJobsPerSecond
    Int maxMaxStatusChecksPerSecond
    String restartRestartTimes
    String attemptAttempt
    Boolean timestampTimestamp
    String greedinessGreediness
    Boolean noNoHooks
    Boolean printPrintCompilation
    String overwriteOverwriteShellCmd
    Boolean verboseVerbose
    Boolean debugDebug
    File runtimeRuntimeProfile
    Boolean modeMode
    Boolean bashBashCompletion
    Boolean useUseCondA
    String condCondAPrefix
    Boolean createCreateEnvsOnly
    Boolean useUseSingularity
    String singularitySingularityPrefix
    String singularitySingularityArgs
    String wrapperWrapperPrefix
    String defaultDefaultRemoteProvider
    String defaultDefaultRemotePrefix
    Boolean noNoSharedFs
  }
  command <<<
    metameta \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""} \
      ~{if defined(snakeSnakeFile) then ("--snakefile " +  '"' + snakeSnakeFile + '"') else ""} \
      ~{true="--gui" false="" guiGui} \
      ~{true="--cores" false="" coresCores} \
      ~{if defined(localLocalCores) then ("--local-cores " +  '"' + localLocalCores + '"') else ""} \
      ~{true="--resources" false="" resourcesResources} \
      ~{true="--config" false="" configConfig} \
      ~{if defined(configConfigFile) then ("--configfile " +  '"' + configConfigFile + '"') else ""} \
      ~{true="--list" false="" listList} \
      ~{true="--list-target-rules" false="" listListTargetRules} \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""} \
      ~{true="--dryrun" false="" dryDryRun} \
      ~{true="--printshellcmds" false="" printPrintShellCmds} \
      ~{true="--debug-dag" false="" debugDebugDag} \
      ~{true="--dag" false="" dagDag} \
      ~{true="--force-use-threads" false="" forceForceUseThreads} \
      ~{true="--rulegraph" false="" ruleRuleGraph} \
      ~{true="--d3dag" false="" d3dagD3dag} \
      ~{true="--summary" false="" summarySummary} \
      ~{true="--detailed-summary" false="" detailedDetailedSummary} \
      ~{if defined(archiveArchive) then ("--archive " +  '"' + archiveArchive + '"') else ""} \
      ~{true="--touch" false="" touchTouch} \
      ~{true="--keep-going" false="" keepKeepGoing} \
      ~{true="--force" false="" forceForce} \
      ~{true="--forceall" false="" forceForceAll} \
      ~{true="--forcerun" false="" forceForceRun} \
      ~{if defined(prioritizePrioritize) then ("--prioritize " +  '"' + prioritizePrioritize + '"') else ""} \
      ~{if defined(untilUntil) then ("--until " +  '"' + untilUntil + '"') else ""} \
      ~{if defined(omitOmitFrom) then ("--omit-from " +  '"' + omitOmitFrom + '"') else ""} \
      ~{true="--allow-ambiguity" false="" allowAllowAmbiguity} \
      ~{if defined(clusterCluster) then ("--cluster " +  '"' + clusterCluster + '"') else ""} \
      ~{if defined(clusterClusterSync) then ("--cluster-sync " +  '"' + clusterClusterSync + '"') else ""} \
      ~{true="--drmaa" false="" drmaaDrmaa} \
      ~{if defined(drmaaDrmaaLogDir) then ("--drmaa-log-dir " +  '"' + drmaaDrmaaLogDir + '"') else ""} \
      ~{if defined(clusterClusterConfig) then ("--cluster-config " +  '"' + clusterClusterConfig + '"') else ""} \
      ~{true="--immediate-submit" false="" immediateImmediateSubmit} \
      ~{if defined(jobJobScript) then ("--jobscript " +  '"' + jobJobScript + '"') else ""} \
      ~{if defined(jobJobName) then ("--jobname " +  '"' + jobJobName + '"') else ""} \
      ~{if defined(clusterClusterStatus) then ("--cluster-status " +  '"' + clusterClusterStatus + '"') else ""} \
      ~{true="--kubernetes" false="" kuKuBernetEs} \
      ~{if defined(kuKuBernetEsEnv) then ("--kubernetes-env " +  '"' + kuKuBernetEsEnv + '"') else ""} \
      ~{if defined(containerContainerImage) then ("--container-image " +  '"' + containerContainerImage + '"') else ""} \
      ~{true="--reason" false="" reasonReason} \
      ~{if defined(statsStats) then ("--stats " +  '"' + statsStats + '"') else ""} \
      ~{true="--nocolor" false="" noNoColor} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--nolock" false="" noNoLock} \
      ~{true="--unlock" false="" unlockUnlock} \
      ~{if defined(cleanupCleanupMetadata) then ("--cleanup-metadata " +  '"' + cleanupCleanupMetadata + '"') else ""} \
      ~{true="--rerun-incomplete" false="" rerunRerunIncomplete} \
      ~{true="--ignore-incomplete" false="" ignoreIgnoreIncomplete} \
      ~{true="--list-version-changes" false="" listListVersionChanges} \
      ~{true="--list-code-changes" false="" listListCodeChanges} \
      ~{true="--list-input-changes" false="" listListInputChanges} \
      ~{true="--list-params-changes" false="" listListParamsChanges} \
      ~{if defined(latencyLatencyWait) then ("--latency-wait " +  '"' + latencyLatencyWait + '"') else ""} \
      ~{true="--wait-for-files" false="" waitWaitForFiles} \
      ~{if defined(benchmarkBenchmarkRepeats) then ("--benchmark-repeats " +  '"' + benchmarkBenchmarkRepeats + '"') else ""} \
      ~{true="--notemp" false="" noNoTemp} \
      ~{true="--keep-remote" false="" keepKeepRemote} \
      ~{true="--keep-target-files" false="" keepKeepTargetFiles} \
      ~{true="--keep-shadow" false="" keepKeepShadow} \
      ~{if defined(allowedAllowedRules) then ("--allowed-rules " +  '"' + allowedAllowedRules + '"') else ""} \
      ~{if defined(maxMaxJobsPerSecond) then ("--max-jobs-per-second " +  '"' + maxMaxJobsPerSecond + '"') else ""} \
      ~{if defined(maxMaxStatusChecksPerSecond) then ("--max-status-checks-per-second " +  '"' + maxMaxStatusChecksPerSecond + '"') else ""} \
      ~{if defined(restartRestartTimes) then ("--restart-times " +  '"' + restartRestartTimes + '"') else ""} \
      ~{if defined(attemptAttempt) then ("--attempt " +  '"' + attemptAttempt + '"') else ""} \
      ~{true="--timestamp" false="" timestampTimestamp} \
      ~{if defined(greedinessGreediness) then ("--greediness " +  '"' + greedinessGreediness + '"') else ""} \
      ~{true="--no-hooks" false="" noNoHooks} \
      ~{true="--print-compilation" false="" printPrintCompilation} \
      ~{if defined(overwriteOverwriteShellCmd) then ("--overwrite-shellcmd " +  '"' + overwriteOverwriteShellCmd + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(runtimeRuntimeProfile) then ("--runtime-profile " +  '"' + runtimeRuntimeProfile + '"') else ""} \
      ~{true="--mode" false="" modeMode} \
      ~{true="--bash-completion" false="" bashBashCompletion} \
      ~{true="--use-conda" false="" useUseCondA} \
      ~{if defined(condCondAPrefix) then ("--conda-prefix " +  '"' + condCondAPrefix + '"') else ""} \
      ~{true="--create-envs-only" false="" createCreateEnvsOnly} \
      ~{true="--use-singularity" false="" useUseSingularity} \
      ~{if defined(singularitySingularityPrefix) then ("--singularity-prefix " +  '"' + singularitySingularityPrefix + '"') else ""} \
      ~{if defined(singularitySingularityArgs) then ("--singularity-args " +  '"' + singularitySingularityArgs + '"') else ""} \
      ~{if defined(wrapperWrapperPrefix) then ("--wrapper-prefix " +  '"' + wrapperWrapperPrefix + '"') else ""} \
      ~{if defined(defaultDefaultRemoteProvider) then ("--default-remote-provider " +  '"' + defaultDefaultRemoteProvider + '"') else ""} \
      ~{if defined(defaultDefaultRemotePrefix) then ("--default-remote-prefix " +  '"' + defaultDefaultRemotePrefix + '"') else ""} \
      ~{true="--no-shared-fs" false="" noNoSharedFs}
  >>>
}