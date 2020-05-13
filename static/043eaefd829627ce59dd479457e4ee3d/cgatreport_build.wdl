version 1.0

task CgatreportBuild {
  input {
    String numNumJobs
    String verboseVerbose
  }
  command <<<
    cgatreport-build \
      ~{if defined(numNumJobs) then ("--num-jobs " +  '"' + numNumJobs + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}