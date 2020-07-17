version 1.0

task ChainFusionSamples.py {
  input {
    String? fuzzy_junction
  }
  command <<<
    chain_fusion_samples.py \
      ~{if defined(fuzzy_junction) then ("--fuzzy_junction " +  '"' + fuzzy_junction + '"') else ""}
  >>>
  parameter_meta {
    fuzzy_junction: "Max allowed distance in junction to be considered identical (default: 5 bp)"
  }
}