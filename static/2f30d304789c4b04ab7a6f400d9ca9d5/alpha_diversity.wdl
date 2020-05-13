version 1.0

task AlphaDiversity.py {
  input {
    Boolean verboseVerbose
    String inputInputPath
    String outputOutputPath
    String metricsMetrics
    Boolean showShowMetrics
    String treeTreePath
  }
  command <<<
    alpha_diversity.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""} \
      ~{if defined(metricsMetrics) then ("--metrics " +  '"' + metricsMetrics + '"') else ""} \
      ~{true="--show_metrics" false="" showShowMetrics} \
      ~{if defined(treeTreePath) then ("--tree_path " +  '"' + treeTreePath + '"') else ""}
  >>>
}