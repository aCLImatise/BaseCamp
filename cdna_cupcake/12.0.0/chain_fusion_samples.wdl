version 1.0

task ChainFusionSamples.py {
  input {
    String fuzzyFuzzyJunction
  }
  command <<<
    chain_fusion_samples.py \
      ~{if defined(fuzzyFuzzyJunction) then ("--fuzzy_junction " +  '"' + fuzzyFuzzyJunction + '"') else ""}
  >>>
}