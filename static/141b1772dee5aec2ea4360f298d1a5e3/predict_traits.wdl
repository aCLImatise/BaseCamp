version 1.0

task PredictTraits.py {
  input {
    String observedObservedTraitTable
    String treeTree
  }
  command <<<
    predict_traits.py \
      ~{if defined(observedObservedTraitTable) then ("--observed_trait_table " +  '"' + observedObservedTraitTable + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""}
  >>>
}