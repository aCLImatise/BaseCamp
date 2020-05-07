version 1.0

task InStrainOther {
  input {
    String processesProcesses
    Boolean debugDebug
    String oldOldIs
    String runRunStatistics
  }
  command <<<
    inStrain other \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(oldOldIs) then ("--old_IS " +  '"' + oldOldIs + '"') else ""} \
      ~{if defined(runRunStatistics) then ("--run_statistics " +  '"' + runRunStatistics + '"') else ""}
  >>>
}