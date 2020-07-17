version 1.0

task ParallelPredictTraits.py {
  input {
    String? observed_trait_table
    String? tree
    String? output_trait_table
  }
  command <<<
    parallel_predict_traits.py \
      ~{if defined(observed_trait_table) then ("--observed_trait_table " +  '"' + observed_trait_table + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(output_trait_table) then ("--output_trait_table " +  '"' + output_trait_table + '"') else ""}
  >>>
  parameter_meta {
    observed_trait_table: "the input trait table describing directly observed traits (e.g. sequenced genomes) in tab-delimited format [REQUIRED]"
    tree: "the full reference tree, in Newick format [REQUIRED]"
    output_trait_table: "the output filepath for trait predictions [REQUIRED]"
  }
}