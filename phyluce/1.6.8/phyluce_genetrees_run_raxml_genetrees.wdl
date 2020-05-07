version 1.0

task PhyluceGenetreesRunRaxmlGenetrees {
  input {
    String inputInput
    String outputOutput
    String outOutGroup
    String threadsThreads
    String treeTreeSearches
    String coresCores
    Boolean quietQuiet
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_genetrees_run_raxml_genetrees \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outOutGroup) then ("--outgroup " +  '"' + outOutGroup + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(treeTreeSearches) then ("--tree-searches " +  '"' + treeTreeSearches + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}