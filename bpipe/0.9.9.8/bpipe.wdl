version 1.0

task Bpipe {
  input {
    String autoAutoArchive
    String branchBranch
    String dirDir
    String filenameFilename
    Boolean resourceResource
    String intervalInterval
    String memoryMemory
    String threadsThreads
    Boolean paramParam
    Boolean reportReport
    String reportReport
    String sourceSource
    Boolean testTest
    String untilUntil
    Boolean verboseVerbose
    Boolean yesYes
  }
  command <<<
    bpipe \
      ~{if defined(autoAutoArchive) then ("--autoarchive " +  '"' + autoAutoArchive + '"') else ""} \
      ~{if defined(branchBranch) then ("--branch " +  '"' + branchBranch + '"') else ""} \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""} \
      ~{if defined(filenameFilename) then ("--filename " +  '"' + filenameFilename + '"') else ""} \
      ~{true="--resource" false="" resourceResource} \
      ~{if defined(intervalInterval) then ("--interval " +  '"' + intervalInterval + '"') else ""} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--param" false="" paramParam} \
      ~{true="--report" false="" reportReport} \
      ~{if defined(reportReport) then ("--report " +  '"' + reportReport + '"') else ""} \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""} \
      ~{true="--test" false="" testTest} \
      ~{if defined(untilUntil) then ("--until " +  '"' + untilUntil + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--yes" false="" yesYes}
  >>>
}