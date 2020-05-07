version 1.0

task ParallelPredictTraits.py {
  input {
    String observedObservedTraitTable
    String treeTree
    String outputOutputTraitTable
  }
  command <<<
    parallel_predict_traits.py \
      ~{if defined(observedObservedTraitTable) then ("--observed_trait_table " +  '"' + observedObservedTraitTable + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(outputOutputTraitTable) then ("--output_trait_table " +  '"' + outputOutputTraitTable + '"') else ""}
  >>>
}