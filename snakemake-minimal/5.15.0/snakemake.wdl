version 1.0

task Snakemake {
  input {
    Boolean dryDryRun
    String profileProfile
    Boolean cacheCache
    File snakeSnakeFile
    Boolean coresCores
    String localLocalCores
    Boolean resourcesResources
    Boolean setSetThreads
    Boolean defaultDefaultResources
    Boolean configConfig
    Array[File]+ configConfigFiles
    String directoryDirectory
    Boolean touchTouch
    Boolean keepKeepGoing
    Boolean forceForce
    Boolean forceForceAll
    Boolean forceForceRun
    Array[String]+ prioritizePrioritize
    String batchBatch
    Array[String]+ untilUntil
    Array[String]+ omitOmitFrom
    Boolean rerunRerunIncomplete
    String shadowShadowPrefix
    Boolean reportReport
    String reportReportStylesheet
    Boolean lintLint
    File exportExportCwl
    Boolean listList
    Boolean listListTargetRules
    Boolean dagDag
    Boolean ruleRuleGraph
    Boolean fileFileGraph
    Boolean d3dagD3dag
    Boolean summarySummary
    Boolean detailedDetailedSummary
    File archiveArchive
    Array[File]+ cleanupCleanupMetadata
    Boolean cleanupCleanupShadow
    Boolean skipSkipScriptCleanup
    Boolean unlockUnlock
    Boolean listListVersionChanges
    Boolean listListCodeChanges
    Boolean listListInputChanges
    Boolean listListParamsChanges
    Boolean listListUntracked
    Boolean deleteDeleteAllOutput
    Boolean deleteDeleteTempOutput
    Boolean bashBashCompletion
    Boolean keepKeepIncomplete
    Boolean reasonReason
    Boolean guiGui
    Boolean printPrintShellCmds
    Boolean debugDebugDag
    File statsStats
    Boolean noNoColor
    Boolean quietQuiet
    Boolean printPrintCompilation
    Boolean verboseVerbose
    Boolean forceForceUseThreads
    Boolean allowAllowAmbiguity
    Boolean noNoLock
    Boolean ignoreIgnoreIncomplete
    String latencyLatencyWait
    Boolean waitWaitForFiles
    Boolean noNoTemp
    Boolean keepKeepRemote
    Boolean keepKeepTargetFiles
    Array[String]+ allowedAllowedRules
    Int maxMaxJobsPerSecond
    Int maxMaxStatusChecksPerSecond
    String restartRestartTimes
    String attemptAttempt
    String wrapperWrapperPrefix
    String defaultDefaultRemoteProvider
    String defaultDefaultRemotePrefix
    Boolean noNoSharedFs
    String greedinessGreediness
    Boolean noNoHooks
    String overwriteOverwriteShellCmd
    Boolean debugDebug
    File runtimeRuntimeProfile
    Boolean modeMode
    Boolean showShowFailedLogs
    File logLogHandlerScript
    String logLogService
    String clusterCluster
    String clusterClusterSync
    Boolean drmaaDrmaa
    File clusterClusterConfig
    Boolean immediateImmediateSubmit
    String jobJobScript
    String jobJobName
    String clusterClusterStatus
    String drmaaDrmaaLogDir
    Boolean kuKuBernetEs
    String containerContainerImage
    Boolean tibTibAnna
    String tibTibAnnaSfn
    String prePreCommand
    Array[String]+ tibTibAnnaConfig
    Boolean useUseCondA
    Boolean listListCondAEnvs
    String condCondAPrefix
    Boolean condCondACleanupEnvs
    Boolean condCondACleanupPkgs
    Boolean condCondACreateEnvsOnly
    Boolean useUseSingularity
    String singularitySingularityPrefix
    String singularitySingularityArgs
    Boolean useUseEnvModules
    String? targetTarget
  }
  command <<<
    snakemake \
      ~{targetTarget} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""} \
      ~{true="--cache" false="" cacheCache} \
      ~{if defined(snakeSnakeFile) then ("--snakefile " +  '"' + snakeSnakeFile + '"') else ""} \
      ~{true="--cores" false="" coresCores} \
      ~{if defined(localLocalCores) then ("--local-cores " +  '"' + localLocalCores + '"') else ""} \
      ~{true="--resources" false="" resourcesResources} \
      ~{true="--set-threads" false="" setSetThreads} \
      ~{true="--default-resources" false="" defaultDefaultResources} \
      ~{true="--config" false="" configConfig} \
      ~{if defined(configConfigFiles) then ("--configfiles " +  '"' + configConfigFiles + '"') else ""} \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""} \
      ~{true="--touch" false="" touchTouch} \
      ~{true="--keep-going" false="" keepKeepGoing} \
      ~{true="--force" false="" forceForce} \
      ~{true="--forceall" false="" forceForceAll} \
      ~{true="--forcerun" false="" forceForceRun} \
      ~{if defined(prioritizePrioritize) then ("--prioritize " +  '"' + prioritizePrioritize + '"') else ""} \
      ~{if defined(batchBatch) then ("--batch " +  '"' + batchBatch + '"') else ""} \
      ~{if defined(untilUntil) then ("--until " +  '"' + untilUntil + '"') else ""} \
      ~{if defined(omitOmitFrom) then ("--omit-from " +  '"' + omitOmitFrom + '"') else ""} \
      ~{true="--rerun-incomplete" false="" rerunRerunIncomplete} \
      ~{if defined(shadowShadowPrefix) then ("--shadow-prefix " +  '"' + shadowShadowPrefix + '"') else ""} \
      ~{true="--report" false="" reportReport} \
      ~{if defined(reportReportStylesheet) then ("--report-stylesheet " +  '"' + reportReportStylesheet + '"') else ""} \
      ~{true="--lint" false="" lintLint} \
      ~{if defined(exportExportCwl) then ("--export-cwl " +  '"' + exportExportCwl + '"') else ""} \
      ~{true="--list" false="" listList} \
      ~{true="--list-target-rules" false="" listListTargetRules} \
      ~{true="--dag" false="" dagDag} \
      ~{true="--rulegraph" false="" ruleRuleGraph} \
      ~{true="--filegraph" false="" fileFileGraph} \
      ~{true="--d3dag" false="" d3dagD3dag} \
      ~{true="--summary" false="" summarySummary} \
      ~{true="--detailed-summary" false="" detailedDetailedSummary} \
      ~{if defined(archiveArchive) then ("--archive " +  '"' + archiveArchive + '"') else ""} \
      ~{if defined(cleanupCleanupMetadata) then ("--cleanup-metadata " +  '"' + cleanupCleanupMetadata + '"') else ""} \
      ~{true="--cleanup-shadow" false="" cleanupCleanupShadow} \
      ~{true="--skip-script-cleanup" false="" skipSkipScriptCleanup} \
      ~{true="--unlock" false="" unlockUnlock} \
      ~{true="--list-version-changes" false="" listListVersionChanges} \
      ~{true="--list-code-changes" false="" listListCodeChanges} \
      ~{true="--list-input-changes" false="" listListInputChanges} \
      ~{true="--list-params-changes" false="" listListParamsChanges} \
      ~{true="--list-untracked" false="" listListUntracked} \
      ~{true="--delete-all-output" false="" deleteDeleteAllOutput} \
      ~{true="--delete-temp-output" false="" deleteDeleteTempOutput} \
      ~{true="--bash-completion" false="" bashBashCompletion} \
      ~{true="--keep-incomplete" false="" keepKeepIncomplete} \
      ~{true="--reason" false="" reasonReason} \
      ~{true="--gui" false="" guiGui} \
      ~{true="--printshellcmds" false="" printPrintShellCmds} \
      ~{true="--debug-dag" false="" debugDebugDag} \
      ~{if defined(statsStats) then ("--stats " +  '"' + statsStats + '"') else ""} \
      ~{true="--nocolor" false="" noNoColor} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--print-compilation" false="" printPrintCompilation} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--force-use-threads" false="" forceForceUseThreads} \
      ~{true="--allow-ambiguity" false="" allowAllowAmbiguity} \
      ~{true="--nolock" false="" noNoLock} \
      ~{true="--ignore-incomplete" false="" ignoreIgnoreIncomplete} \
      ~{if defined(latencyLatencyWait) then ("--latency-wait " +  '"' + latencyLatencyWait + '"') else ""} \
      ~{true="--wait-for-files" false="" waitWaitForFiles} \
      ~{true="--notemp" false="" noNoTemp} \
      ~{true="--keep-remote" false="" keepKeepRemote} \
      ~{true="--keep-target-files" false="" keepKeepTargetFiles} \
      ~{if defined(allowedAllowedRules) then ("--allowed-rules " +  '"' + allowedAllowedRules + '"') else ""} \
      ~{if defined(maxMaxJobsPerSecond) then ("--max-jobs-per-second " +  '"' + maxMaxJobsPerSecond + '"') else ""} \
      ~{if defined(maxMaxStatusChecksPerSecond) then ("--max-status-checks-per-second " +  '"' + maxMaxStatusChecksPerSecond + '"') else ""} \
      ~{if defined(restartRestartTimes) then ("--restart-times " +  '"' + restartRestartTimes + '"') else ""} \
      ~{if defined(attemptAttempt) then ("--attempt " +  '"' + attemptAttempt + '"') else ""} \
      ~{if defined(wrapperWrapperPrefix) then ("--wrapper-prefix " +  '"' + wrapperWrapperPrefix + '"') else ""} \
      ~{if defined(defaultDefaultRemoteProvider) then ("--default-remote-provider " +  '"' + defaultDefaultRemoteProvider + '"') else ""} \
      ~{if defined(defaultDefaultRemotePrefix) then ("--default-remote-prefix " +  '"' + defaultDefaultRemotePrefix + '"') else ""} \
      ~{true="--no-shared-fs" false="" noNoSharedFs} \
      ~{if defined(greedinessGreediness) then ("--greediness " +  '"' + greedinessGreediness + '"') else ""} \
      ~{true="--no-hooks" false="" noNoHooks} \
      ~{if defined(overwriteOverwriteShellCmd) then ("--overwrite-shellcmd " +  '"' + overwriteOverwriteShellCmd + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(runtimeRuntimeProfile) then ("--runtime-profile " +  '"' + runtimeRuntimeProfile + '"') else ""} \
      ~{true="--mode" false="" modeMode} \
      ~{true="--show-failed-logs" false="" showShowFailedLogs} \
      ~{if defined(logLogHandlerScript) then ("--log-handler-script " +  '"' + logLogHandlerScript + '"') else ""} \
      ~{if defined(logLogService) then ("--log-service " +  '"' + logLogService + '"') else ""} \
      ~{if defined(clusterCluster) then ("--cluster " +  '"' + clusterCluster + '"') else ""} \
      ~{if defined(clusterClusterSync) then ("--cluster-sync " +  '"' + clusterClusterSync + '"') else ""} \
      ~{true="--drmaa" false="" drmaaDrmaa} \
      ~{if defined(clusterClusterConfig) then ("--cluster-config " +  '"' + clusterClusterConfig + '"') else ""} \
      ~{true="--immediate-submit" false="" immediateImmediateSubmit} \
      ~{if defined(jobJobScript) then ("--jobscript " +  '"' + jobJobScript + '"') else ""} \
      ~{if defined(jobJobName) then ("--jobname " +  '"' + jobJobName + '"') else ""} \
      ~{if defined(clusterClusterStatus) then ("--cluster-status " +  '"' + clusterClusterStatus + '"') else ""} \
      ~{if defined(drmaaDrmaaLogDir) then ("--drmaa-log-dir " +  '"' + drmaaDrmaaLogDir + '"') else ""} \
      ~{true="--kubernetes" false="" kuKuBernetEs} \
      ~{if defined(containerContainerImage) then ("--container-image " +  '"' + containerContainerImage + '"') else ""} \
      ~{true="--tibanna" false="" tibTibAnna} \
      ~{if defined(tibTibAnnaSfn) then ("--tibanna-sfn " +  '"' + tibTibAnnaSfn + '"') else ""} \
      ~{if defined(prePreCommand) then ("--precommand " +  '"' + prePreCommand + '"') else ""} \
      ~{if defined(tibTibAnnaConfig) then ("--tibanna-config " +  '"' + tibTibAnnaConfig + '"') else ""} \
      ~{true="--use-conda" false="" useUseCondA} \
      ~{true="--list-conda-envs" false="" listListCondAEnvs} \
      ~{if defined(condCondAPrefix) then ("--conda-prefix " +  '"' + condCondAPrefix + '"') else ""} \
      ~{true="--conda-cleanup-envs" false="" condCondACleanupEnvs} \
      ~{true="--conda-cleanup-pkgs" false="" condCondACleanupPkgs} \
      ~{true="--conda-create-envs-only" false="" condCondACreateEnvsOnly} \
      ~{true="--use-singularity" false="" useUseSingularity} \
      ~{if defined(singularitySingularityPrefix) then ("--singularity-prefix " +  '"' + singularitySingularityPrefix + '"') else ""} \
      ~{if defined(singularitySingularityArgs) then ("--singularity-args " +  '"' + singularitySingularityArgs + '"') else ""} \
      ~{true="--use-envmodules" false="" useUseEnvModules}
  >>>
}