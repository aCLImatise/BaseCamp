version 1.0

task Segway {
  input {
    String memMemUsage
    Int splitSplitSequences
    String verbosityVerbosity
    String clusterClusterOpt
    Boolean dryDryRun
  }
  command <<<
    segway \
      ~{if defined(memMemUsage) then ("--mem-usage " +  '"' + memMemUsage + '"') else ""} \
      ~{if defined(splitSplitSequences) then ("--split-sequences " +  '"' + splitSplitSequences + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(clusterClusterOpt) then ("--cluster-opt " +  '"' + clusterClusterOpt + '"') else ""} \
      ~{true="--dry-run" false="" dryDryRun}
  >>>
}