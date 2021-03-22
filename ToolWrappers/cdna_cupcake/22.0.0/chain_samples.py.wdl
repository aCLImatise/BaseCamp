version 1.0

task ChainSamplespy {
  input {
    Int? fuzzy_junction
    Boolean? dun_merge_five_shorter
    Int? max_three_diff
    Int? cpus
    String config_file
  }
  command <<<
    chain_samples_py \
      ~{config_file} \
      ~{if defined(fuzzy_junction) then ("--fuzzy_junction " +  '"' + fuzzy_junction + '"') else ""} \
      ~{if (dun_merge_five_shorter) then "--dun-merge-5-shorter" else ""} \
      ~{if defined(max_three_diff) then ("--max_3_diff " +  '"' + max_three_diff + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
  }
  parameter_meta {
    fuzzy_junction: "Max allowed distance in junction to be considered\\nidentical (default: 0 bp)"
    dun_merge_five_shorter: "Don't collapse shorter 5' transcripts (default: off)"
    max_three_diff: "Maximum 3' difference allowed (default: 30bp)"
    cpus: "Number of CPUs to use for multi-threading (default: 8)"
    config_file: "{norm_fl,count_fl}    Which count field to use for chained sample (default:\\ncount_fl)"
  }
  output {
    File out_stdout = stdout()
  }
}