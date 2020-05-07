version 1.0

task BetaDiversity.py {
  input {
    Boolean verboseVerbose
    String inputInputPath
    String rowsRows
    String outputOutputDir
    String metricsMetrics
    Boolean showShowMetrics
    String treeTreePath
    Boolean fullFullTree
  }
  command <<<
    beta_diversity.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(rowsRows) then ("--rows " +  '"' + rowsRows + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(metricsMetrics) then ("--metrics " +  '"' + metricsMetrics + '"') else ""} \
      ~{true="--show_metrics" false="" showShowMetrics} \
      ~{if defined(treeTreePath) then ("--tree_path " +  '"' + treeTreePath + '"') else ""} \
      ~{true="--full_tree" false="" fullFullTree}
  >>>
}