version 1.0

task PhyluceGenetreesRunRaxmlBootstraps {
  input {
    String alignmentsAlignments
    String bestBestTrees
    String outputOutput
    String bootBootReps
    String outOutGroup
    String threadsThreads
    String coresCores
    Boolean quietQuiet
  }
  command <<<
    phyluce_genetrees_run_raxml_bootstraps \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(bestBestTrees) then ("--best-trees " +  '"' + bestBestTrees + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(bootBootReps) then ("--bootreps " +  '"' + bootBootReps + '"') else ""} \
      ~{if defined(outOutGroup) then ("--outgroup " +  '"' + outOutGroup + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}