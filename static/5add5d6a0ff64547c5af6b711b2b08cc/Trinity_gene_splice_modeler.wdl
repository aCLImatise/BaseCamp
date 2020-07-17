version 1.0

task TrinityGeneSpliceModeler.py {
  input {
    String? trinity_fast_a
    String? out_prefix
    Boolean? incl_malign
    Boolean? debug
    Boolean? verbose
    Boolean? no_squeeze
    Boolean? no_refinement
    Boolean? incl_cdna
    Boolean? incl_dot
    String? restrict_gene_id
  }
  command <<<
    Trinity_gene_splice_modeler.py \
      ~{if defined(trinity_fast_a) then ("--trinity_fasta " +  '"' + trinity_fast_a + '"') else ""} \
      ~{if defined(out_prefix) then ("--out_prefix " +  '"' + out_prefix + '"') else ""} \
      ~{true="--incl_malign" false="" incl_malign} \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--no_squeeze" false="" no_squeeze} \
      ~{true="--no_refinement" false="" no_refinement} \
      ~{true="--incl_cdna" false="" incl_cdna} \
      ~{true="--incl_dot" false="" incl_dot} \
      ~{if defined(restrict_gene_id) then ("--restrict_gene_id " +  '"' + restrict_gene_id + '"') else ""}
  >>>
  parameter_meta {
    trinity_fast_a: "Trinity.fasta file (default: )"
    out_prefix: "output prefix for fasta and gtf outputs (default: trinity_genes)"
    incl_malign: "include multiple alignment formatted output file (default: False)"
    debug: "debug mode (default: False)"
    verbose: "verbose mode (default: False)"
    no_squeeze: "don't merge unbranched stretches of node identifiers (default: False)"
    no_refinement: "don't refine splice graph by further collapsing allelic variants (default: False)"
    incl_cdna: "rewrite Trinity fasta file using simplified graph structure (default: False)"
    incl_dot: "include dot file for gene graph (*warning* single dot file per gene!! use sparingly) (default: False)"
    restrict_gene_id: "only process this gene (default: None)"
  }
}