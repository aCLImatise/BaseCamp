version 1.0

task PredictTraits.py {
  input {
    String? observed_trait_table
    String? tree
  }
  command <<<
    predict_traits.py \
      ~{if defined(observed_trait_table) then ("--observed_trait_table " +  '"' + observed_trait_table + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""}
  >>>
  parameter_meta {
    observed_trait_table: "the input trait table describing directly observed traits (e.g. sequenced genomes) in tab-delimited format [REQUIRED]"
    tree: "the full reference tree, in Newick format [REQUIRED]"
  }
}