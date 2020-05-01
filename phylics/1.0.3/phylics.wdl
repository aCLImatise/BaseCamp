version 1.0

task Phylics {
  input {
    Boolean runRun
    Boolean runRun10xPreproc
    Boolean runRunCellFiltering
    Boolean runRunCnVs
    Boolean runRunSingle
    Boolean runRunMultiple
    String methodMethod
    String metricMetric
    String outputOutputPath
    String outputOutputPrefix
    String tasksTasks
    String seedSeed
    String nNPermutations
    String recRecLust
    Boolean reinitReinit
    Array[String]+ intervalsIntervals
    Array[String]+ valuesValues
    String genomeGenome
    String binningBinning
    Boolean verboseVerbose
  }
  command <<<
    phylics \
      ~{true="--run" false="" runRun} \
      ~{true="--run_10x_preproc" false="" runRun10xPreproc} \
      ~{true="--run_cell_filtering" false="" runRunCellFiltering} \
      ~{true="--run_cnvs" false="" runRunCnVs} \
      ~{true="--run_single" false="" runRunSingle} \
      ~{true="--run_multiple" false="" runRunMultiple} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(metricMetric) then ("--metric " +  '"' + metricMetric + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(tasksTasks) then ("--tasks " +  '"' + tasksTasks + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(nNPermutations) then ("--n_permutations " +  '"' + nNPermutations + '"') else ""} \
      ~{if defined(recRecLust) then ("--reclust " +  '"' + recRecLust + '"') else ""} \
      ~{true="--reinit" false="" reinitReinit} \
      ~{if defined(intervalsIntervals) then ("--intervals " +  '"' + intervalsIntervals + '"') else ""} \
      ~{if defined(valuesValues) then ("--values " +  '"' + valuesValues + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(binningBinning) then ("--binning " +  '"' + binningBinning + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}