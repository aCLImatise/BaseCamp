version 1.0

task BetaSignificance.py {
  input {
    String inputInputPath
    String outputOutputPath
    String significanceSignificanceTest
    String treeTreePath
  }
  command <<<
    beta_significance.py \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""} \
      ~{if defined(significanceSignificanceTest) then ("--significance_test " +  '"' + significanceSignificanceTest + '"') else ""} \
      ~{if defined(treeTreePath) then ("--tree_path " +  '"' + treeTreePath + '"') else ""}
  >>>
}