version 1.0

task TrinityGeneSpliceModelerpy {
  input {
    File? trinity_fast_a
    String? out_prefix
    File? incl_malign
    Boolean? debug
    Boolean? verbose
    Boolean? no_squeeze
    Boolean? no_refinement
    Boolean? incl_cdna
    Boolean? incl_dot
    String? restrict_gene_id
  }
  command <<<
    Trinity_gene_splice_modeler_py \
      ~{if defined(trinity_fast_a) then ("--trinity_fasta " +  '"' + trinity_fast_a + '"') else ""} \
      ~{if defined(out_prefix) then ("--out_prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if (incl_malign) then "--incl_malign" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_squeeze) then "--no_squeeze" else ""} \
      ~{if (no_refinement) then "--no_refinement" else ""} \
      ~{if (incl_cdna) then "--incl_cdna" else ""} \
      ~{if (incl_dot) then "--incl_dot" else ""} \
      ~{if defined(restrict_gene_id) then ("--restrict_gene_id " +  '"' + restrict_gene_id + '"') else ""}
  >>>
  parameter_meta {
    trinity_fast_a: "Trinity.fasta file (default: )"
    out_prefix: "output prefix for fasta and gtf outputs (default:\\ntrinity_genes)"
    incl_malign: "include multiple alignment formatted output file\\n(default: False)"
    debug: "debug mode (default: False)"
    verbose: "verbose mode (default: False)"
    no_squeeze: "don't merge unbranched stretches of node identifiers\\n(default: False)"
    no_refinement: "don't refine splice graph by further collapsing\\nallelic variants (default: False)"
    incl_cdna: "rewrite Trinity fasta file using simplified graph\\nstructure (default: False)"
    incl_dot: "include dot file for gene graph (*warning* single dot\\nfile per gene!! use sparingly) (default: False)"
    restrict_gene_id: "only process this gene (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_incl_malign = "${in_incl_malign}"
  }
}