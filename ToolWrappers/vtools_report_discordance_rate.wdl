version 1.0

task VtoolsReportDiscordanceRate {
  input {
    String? samples_dot
    Boolean? limiting_variants_samples
    String? variants
    Boolean? genotypes
    String? verbosity
    String? samples
  }
  command <<<
    vtools_report discordance_rate \
      ~{samples} \
      ~{if defined(samples_dot) then ("--samples. " +  '"' + samples_dot + '"') else ""} \
      ~{if (limiting_variants_samples) then "-s" else ""} \
      ~{if defined(variants) then ("--variants " +  '"' + variants + '"') else ""} \
      ~{if (genotypes) then "--genotypes" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    samples_dot: "command output a n by n matrix with sample names in the"
    limiting_variants_samples: "[SAMPLES [SAMPLES ...]], --samples [SAMPLES [SAMPLES ...]]\\nLimiting variants from samples that match conditions\\nthat use columns shown in command 'vtools show sample'\\n(e.g. 'aff=1', 'filename like \\\"MG%\\\"')."
    variants: "Limit variants to specified variant table. Default to\\nall variants."
    genotypes: "[GENOTYPES [GENOTYPES ...]]\\nLimiting genotypes from samples that match conditions\\nthat involves genotype fields (e.g. filter by quality\\nscore, with fields shown in command 'vtools show\\ngenotypes'). If a variant is filtered for one sample\\nbut not another, it will be included if runtime option\\n$treat_missing_as_wildtype is set to True, and\\ndiscarded otherwise."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
    samples: ""
  }
  output {
    File out_stdout = stdout()
  }
}