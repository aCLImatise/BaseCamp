version 1.0

task DaisySuite {
  input {
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
    Boolean dagDag
    Boolean forceForceUseThreads
    Boolean ruleRuleGraph
    Boolean d3dagD3dag
    Boolean summarySummary
    Boolean detailedDetailedSummary
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
    File clusterClusterConfig
    Boolean immediateImmediateSubmit
    String jobJobScript
    String jobJobName
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
    Boolean timestampTimestamp
    String greedinessGreediness
    Boolean noNoHooks
    Boolean printPrintCompilation
    String overwriteOverwriteShellCmd
    Boolean verboseVerbose
    Boolean debugDebug
    File profileProfile
    Boolean modeMode
    Boolean bashBashCompletion
    Boolean useUseCondA
    String wrapperWrapperPrefix
  }
  command <<<
    DaisySuite \
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
      ~{true="--dag" false="" dagDag} \
      ~{true="--force-use-threads" false="" forceForceUseThreads} \
      ~{true="--rulegraph" false="" ruleRuleGraph} \
      ~{true="--d3dag" false="" d3dagD3dag} \
      ~{true="--summary" false="" summarySummary} \
      ~{true="--detailed-summary" false="" detailedDetailedSummary} \
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
      ~{if defined(clusterClusterConfig) then ("--cluster-config " +  '"' + clusterClusterConfig + '"') else ""} \
      ~{true="--immediate-submit" false="" immediateImmediateSubmit} \
      ~{if defined(jobJobScript) then ("--jobscript " +  '"' + jobJobScript + '"') else ""} \
      ~{if defined(jobJobName) then ("--jobname " +  '"' + jobJobName + '"') else ""} \
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
      ~{true="--timestamp" false="" timestampTimestamp} \
      ~{if defined(greedinessGreediness) then ("--greediness " +  '"' + greedinessGreediness + '"') else ""} \
      ~{true="--no-hooks" false="" noNoHooks} \
      ~{true="--print-compilation" false="" printPrintCompilation} \
      ~{if defined(overwriteOverwriteShellCmd) then ("--overwrite-shellcmd " +  '"' + overwriteOverwriteShellCmd + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""} \
      ~{true="--mode" false="" modeMode} \
      ~{true="--bash-completion" false="" bashBashCompletion} \
      ~{true="--use-conda" false="" useUseCondA} \
      ~{if defined(wrapperWrapperPrefix) then ("--wrapper-prefix " +  '"' + wrapperWrapperPrefix + '"') else ""}
  >>>
}