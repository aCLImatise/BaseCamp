version 1.0

task CreateNewcase {
  input {
    Boolean debugDebug
    Boolean verboseVerbose
    Boolean silentSilent
    String caseCase
    String compCompSet
    String resRes
    String machineMachine
    String compilerCompiler
    Boolean multiMultiDriver
    String nNInst
    String mpiMpiLib
    String projectProject
    String pePeCount
    String userUserModsDir
    String pesPesFile
    String gridGridFile
    String workflowWorkflow
    String srcrootSrcroot
    String outputOutputRoot
    String wallWallTime
    String queueQueue
    String handleHandlePreexistingDirs
    String inputInputDir
  }
  command <<<
    create_newcase \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--silent" false="" silentSilent} \
      ~{if defined(caseCase) then ("--case " +  '"' + caseCase + '"') else ""} \
      ~{if defined(compCompSet) then ("--compset " +  '"' + compCompSet + '"') else ""} \
      ~{if defined(resRes) then ("--res " +  '"' + resRes + '"') else ""} \
      ~{if defined(machineMachine) then ("--machine " +  '"' + machineMachine + '"') else ""} \
      ~{if defined(compilerCompiler) then ("--compiler " +  '"' + compilerCompiler + '"') else ""} \
      ~{true="--multi-driver" false="" multiMultiDriver} \
      ~{if defined(nNInst) then ("--ninst " +  '"' + nNInst + '"') else ""} \
      ~{if defined(mpiMpiLib) then ("--mpilib " +  '"' + mpiMpiLib + '"') else ""} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(pePeCount) then ("--pecount " +  '"' + pePeCount + '"') else ""} \
      ~{if defined(userUserModsDir) then ("--user-mods-dir " +  '"' + userUserModsDir + '"') else ""} \
      ~{if defined(pesPesFile) then ("--pesfile " +  '"' + pesPesFile + '"') else ""} \
      ~{if defined(gridGridFile) then ("--gridfile " +  '"' + gridGridFile + '"') else ""} \
      ~{if defined(workflowWorkflow) then ("--workflow " +  '"' + workflowWorkflow + '"') else ""} \
      ~{if defined(srcrootSrcroot) then ("--srcroot " +  '"' + srcrootSrcroot + '"') else ""} \
      ~{if defined(outputOutputRoot) then ("--output-root " +  '"' + outputOutputRoot + '"') else ""} \
      ~{if defined(wallWallTime) then ("--walltime " +  '"' + wallWallTime + '"') else ""} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
      ~{if defined(handleHandlePreexistingDirs) then ("--handle-preexisting-dirs " +  '"' + handleHandlePreexistingDirs + '"') else ""} \
      ~{if defined(inputInputDir) then ("--input-dir " +  '"' + inputInputDir + '"') else ""}
  >>>
}