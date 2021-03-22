version 1.0

task ChainFusionSamplespy {
  input {
    Int? fuzzy_junction
    String config_file
  }
  command <<<
    chain_fusion_samples_py \
      ~{config_file} \
      ~{if defined(fuzzy_junction) then ("--fuzzy_junction " +  '"' + fuzzy_junction + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
  }
  parameter_meta {
    fuzzy_junction: "Max allowed distance in junction to be considered\\nidentical (default: 5 bp)\\n"
    config_file: "{norm_fl,count_fl}    Which count field to use for chained sample (default:\\ncount_fl)"
  }
  output {
    File out_stdout = stdout()
  }
}