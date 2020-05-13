version 1.0

task ChainSamples.py {
  input {
    String fuzzyFuzzyJunction
    Boolean dunDunMerge5Shorter
    Int maxMax3Diff
    String cpusCpus
  }
  command <<<
    chain_samples.py \
      ~{if defined(fuzzyFuzzyJunction) then ("--fuzzy_junction " +  '"' + fuzzyFuzzyJunction + '"') else ""} \
      ~{true="--dun-merge-5-shorter" false="" dunDunMerge5Shorter} \
      ~{if defined(maxMax3Diff) then ("--max_3_diff " +  '"' + maxMax3Diff + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""}
  >>>
}