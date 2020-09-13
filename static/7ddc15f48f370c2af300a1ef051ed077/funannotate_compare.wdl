version 1.0

task FunannotateCompare {
  input {
    Boolean? list_funannotate_genome
    Directory? out
    Boolean? database
    Boolean? cpus
    Boolean? run_dnds
    Boolean? go_fdr
    Boolean? heat_map_stdev
    Boolean? num_or_thos
    Boolean? bootstrap
    Boolean? out_group
    Boolean? protein_ortho
    Boolean? ml_method
    String arguments
  }
  command <<<
    funannotate compare \
      ~{arguments} \
      ~{if (list_funannotate_genome) then "--input" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (database) then "--database" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (run_dnds) then "--run_dnds" else ""} \
      ~{if (go_fdr) then "--go_fdr" else ""} \
      ~{if (heat_map_stdev) then "--heatmap_stdev" else ""} \
      ~{if (num_or_thos) then "--num_orthos" else ""} \
      ~{if (bootstrap) then "--bootstrap" else ""} \
      ~{if (out_group) then "--outgroup" else ""} \
      ~{if (protein_ortho) then "--proteinortho" else ""} \
      ~{if (ml_method) then "--ml_method" else ""}
  >>>
  parameter_meta {
    list_funannotate_genome: "List of funannotate genome folders or GBK files"
    out: "Output folder name. Default: funannotate_compare"
    database: "Path to funannotate database. Default: $FUNANNOTATE_DB"
    cpus: "Number of CPUs to use. Default: 2"
    run_dnds: "Calculate dN/dS ratio on all orthologs. [estimate,full]"
    go_fdr: "P-value for FDR GO-enrichment. Default: 0.05"
    heat_map_stdev: "Cut-off for heatmap. Default: 1.0"
    num_or_thos: "Number of Single-copy orthologs to use for ML. Default: 500"
    bootstrap: "Number of boostrap replicates to run with RAxML. Default: 100"
    out_group: "Name of species to use for ML outgroup. Default: no outgroup"
    protein_ortho: "ProteinOrtho5 POFF results."
    ml_method: "Maxmimum Liklihood method: Default: raxml [raxml,iqtree]"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}