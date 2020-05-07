version 1.0

task SraFindExperimentRuns.py {
  input {
    File experimentExperimentFile
    File outputOutputFile
    File logLogFile
    Boolean quietQuiet
    Boolean verboseVerbose
  }
  command <<<
    sra_find_experiment_runs.py \
      ~{if defined(experimentExperimentFile) then ("--experiment-file " +  '"' + experimentExperimentFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}