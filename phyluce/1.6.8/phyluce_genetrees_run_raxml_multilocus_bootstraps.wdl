version 1.0

task PhyluceGenetreesRunRaxmlMultilocusBootstraps {
  input {
    String inputInput
    String bestBestTrees
    String outputOutput
    String bootBootReps
    String outOutGroup
    String threadsThreads
    String coresCores
    Boolean quietQuiet
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_genetrees_run_raxml_multilocus_bootstraps \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(bestBestTrees) then ("--best-trees " +  '"' + bestBestTrees + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(bootBootReps) then ("--bootreps " +  '"' + bootBootReps + '"') else ""} \
      ~{if defined(outOutGroup) then ("--outgroup " +  '"' + outOutGroup + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}