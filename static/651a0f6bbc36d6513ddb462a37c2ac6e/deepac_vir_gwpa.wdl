version 1.0

task DeepacvirGwpa {
  input {
    String details_dot
    String genome_map
    String g_ranking
    String nt_contribs
    String fact_iv
    String f_enrichment
  }
  command <<<
    deepac_vir gwpa \
      ~{details_dot} \
      ~{genome_map} \
      ~{g_ranking} \
      ~{nt_contribs} \
      ~{fact_iv} \
      ~{f_enrichment}
  >>>
  parameter_meta {
    details_dot: "fragment            Fragment genomes for analysis."
    genome_map: "Generate a genome-wide phenotype potential map."
    g_ranking: "Generate gene rankings."
    nt_contribs: "Generate a genome-wide nt contribution map."
    fact_iv: "Get filter activations."
    f_enrichment: "Run filter enrichment analysis."
  }
  output {
    File out_stdout = stdout()
  }
}