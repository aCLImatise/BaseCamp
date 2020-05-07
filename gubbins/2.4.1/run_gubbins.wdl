version 1.0

task RunGubbins.py {
  input {
    String outOutGroup
    String startingStartingTree
    Boolean useUseTimeStamp
    Boolean verboseVerbose
    Boolean noNoCleanup
    String treeTreeBuilder
    String iterationsIterations
    Int minMinSnps
    String filterFilterPercentage
    String prefixPrefix
    String threadsThreads
    String convergeConvergeMethod
    Int minMinWindowSize
    Int maxMaxWindowSize
    String raRaXmlModel
    Boolean removeRemoveIdenticalSequences
    String? alignmentAlignmentFilename
  }
  command <<<
    run_gubbins.py \
      ~{alignmentAlignmentFilename} \
      ~{if defined(outOutGroup) then ("--outgroup " +  '"' + outOutGroup + '"') else ""} \
      ~{if defined(startingStartingTree) then ("--starting_tree " +  '"' + startingStartingTree + '"') else ""} \
      ~{true="--use_time_stamp" false="" useUseTimeStamp} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--no_cleanup" false="" noNoCleanup} \
      ~{if defined(treeTreeBuilder) then ("--tree_builder " +  '"' + treeTreeBuilder + '"') else ""} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{if defined(minMinSnps) then ("--min_snps " +  '"' + minMinSnps + '"') else ""} \
      ~{if defined(filterFilterPercentage) then ("--filter_percentage " +  '"' + filterFilterPercentage + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(convergeConvergeMethod) then ("--converge_method " +  '"' + convergeConvergeMethod + '"') else ""} \
      ~{if defined(minMinWindowSize) then ("--min_window_size " +  '"' + minMinWindowSize + '"') else ""} \
      ~{if defined(maxMaxWindowSize) then ("--max_window_size " +  '"' + maxMaxWindowSize + '"') else ""} \
      ~{if defined(raRaXmlModel) then ("--raxml_model " +  '"' + raRaXmlModel + '"') else ""} \
      ~{true="--remove_identical_sequences" false="" removeRemoveIdenticalSequences}
  >>>
}