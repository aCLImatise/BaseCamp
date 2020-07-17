version 1.0

task ChainSamples.py {
  input {
    String? fuzzy_junction
    Boolean? dun_merge_five_shorter
    Int? max_three_diff
    String? cpus
  }
  command <<<
    chain_samples.py \
      ~{if defined(fuzzy_junction) then ("--fuzzy_junction " +  '"' + fuzzy_junction + '"') else ""} \
      ~{true="--dun-merge-5-shorter" false="" dun_merge_five_shorter} \
      ~{if defined(max_three_diff) then ("--max_3_diff " +  '"' + max_three_diff + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""}
  >>>
  parameter_meta {
    fuzzy_junction: "Max allowed distance in junction to be considered identical (default: 0 bp)"
    dun_merge_five_shorter: "Don't collapse shorter 5' transcripts (default: off)"
    max_three_diff: "Maximum 3' difference allowed (default: 30bp)"
    cpus: "Number of CPUs to use for multi-threading (default: 8)"
  }
}