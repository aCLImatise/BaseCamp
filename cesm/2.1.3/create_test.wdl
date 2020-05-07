version 1.0

task CreateTest {
  input {
    Boolean debugDebug
    Boolean verboseVerbose
    Boolean silentSilent
    Boolean noNoRun
    Boolean noNoBuild
    Boolean noNoSetup
    Boolean useUseExisting
    Boolean saveSaveTiming
    Boolean noNoBatch
    Boolean singleSingleSubmit
    String testTestRoot
    String outputOutputRoot
    String baselineBaselineRoot
    Boolean cleanClean
    String machineMachine
    String mpiMpiLib
    String baselineBaselineName
    Boolean compareCompare
    Boolean generateGenerate
    String compilerCompiler
    Boolean nameNameListsOnly
    String projectProject
    String testTestId
    String parallelParallelJobs
    String procProcPool
    String wallWallTime
    String queueQueue
    String testTestFile
    Boolean allowAllowBaselineOverwrite
    Boolean waitWait
    Boolean waitWaitCheckThroughput
    Boolean waitWaitCheckMemory
    Boolean waitWaitIgnoreNameLists
    Boolean waitWaitIgnoreMemleak
    String forceForceProcs
    String forceForceThreads
    String inputInputDir
    String pesPesFile
    String retryRetry
    String mailMailUser
    String mailMailType
    String? testTestArgs
  }
  command <<<
    create_test \
      ~{testTestArgs} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--no-run" false="" noNoRun} \
      ~{true="--no-build" false="" noNoBuild} \
      ~{true="--no-setup" false="" noNoSetup} \
      ~{true="--use-existing" false="" useUseExisting} \
      ~{true="--save-timing" false="" saveSaveTiming} \
      ~{true="--no-batch" false="" noNoBatch} \
      ~{true="--single-submit" false="" singleSingleSubmit} \
      ~{if defined(testTestRoot) then ("--test-root " +  '"' + testTestRoot + '"') else ""} \
      ~{if defined(outputOutputRoot) then ("--output-root " +  '"' + outputOutputRoot + '"') else ""} \
      ~{if defined(baselineBaselineRoot) then ("--baseline-root " +  '"' + baselineBaselineRoot + '"') else ""} \
      ~{true="--clean" false="" cleanClean} \
      ~{if defined(machineMachine) then ("--machine " +  '"' + machineMachine + '"') else ""} \
      ~{if defined(mpiMpiLib) then ("--mpilib " +  '"' + mpiMpiLib + '"') else ""} \
      ~{if defined(baselineBaselineName) then ("--baseline-name " +  '"' + baselineBaselineName + '"') else ""} \
      ~{true="--compare" false="" compareCompare} \
      ~{true="--generate" false="" generateGenerate} \
      ~{if defined(compilerCompiler) then ("--compiler " +  '"' + compilerCompiler + '"') else ""} \
      ~{true="--namelists-only" false="" nameNameListsOnly} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(testTestId) then ("--test-id " +  '"' + testTestId + '"') else ""} \
      ~{if defined(parallelParallelJobs) then ("--parallel-jobs " +  '"' + parallelParallelJobs + '"') else ""} \
      ~{if defined(procProcPool) then ("--proc-pool " +  '"' + procProcPool + '"') else ""} \
      ~{if defined(wallWallTime) then ("--walltime " +  '"' + wallWallTime + '"') else ""} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
      ~{if defined(testTestFile) then ("--testfile " +  '"' + testTestFile + '"') else ""} \
      ~{true="--allow-baseline-overwrite" false="" allowAllowBaselineOverwrite} \
      ~{true="--wait" false="" waitWait} \
      ~{true="--wait-check-throughput" false="" waitWaitCheckThroughput} \
      ~{true="--wait-check-memory" false="" waitWaitCheckMemory} \
      ~{true="--wait-ignore-namelists" false="" waitWaitIgnoreNameLists} \
      ~{true="--wait-ignore-memleak" false="" waitWaitIgnoreMemleak} \
      ~{if defined(forceForceProcs) then ("--force-procs " +  '"' + forceForceProcs + '"') else ""} \
      ~{if defined(forceForceThreads) then ("--force-threads " +  '"' + forceForceThreads + '"') else ""} \
      ~{if defined(inputInputDir) then ("--input-dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(pesPesFile) then ("--pesfile " +  '"' + pesPesFile + '"') else ""} \
      ~{if defined(retryRetry) then ("--retry " +  '"' + retryRetry + '"') else ""} \
      ~{if defined(mailMailUser) then ("--mail-user " +  '"' + mailMailUser + '"') else ""} \
      ~{if defined(mailMailType) then ("--mail-type " +  '"' + mailMailType + '"') else ""}
  >>>
}