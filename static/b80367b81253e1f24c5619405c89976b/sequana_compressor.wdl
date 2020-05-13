version 1.0

task SequanaCompressor {
  input {
    Boolean quietQuiet
    String sourceSource
    String targetTarget
    Boolean recursiveRecursive
    Boolean dryDryRun
    String threadsThreads
    String jobsJobs
    Boolean bypassBypassJobLimit
    Boolean unlockUnlock
    String snakeSnakeMakeOptions
    String snakeSnakeMakeCluster
  }
  command <<<
    sequana_compressor \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--dryrun" false="" dryDryRun} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(jobsJobs) then ("--jobs " +  '"' + jobsJobs + '"') else ""} \
      ~{true="--bypass-job-limit" false="" bypassBypassJobLimit} \
      ~{true="--unlock" false="" unlockUnlock} \
      ~{if defined(snakeSnakeMakeOptions) then ("--snakemake-options " +  '"' + snakeSnakeMakeOptions + '"') else ""} \
      ~{if defined(snakeSnakeMakeCluster) then ("--snakemake-cluster " +  '"' + snakeSnakeMakeCluster + '"') else ""}
  >>>
}