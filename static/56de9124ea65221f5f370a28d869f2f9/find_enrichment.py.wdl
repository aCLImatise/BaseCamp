version 1.0

task FindEnrichmentpy {
  input {
    Boolean? alpha
    Boolean? pval
    String? ann_of_mt
    File? taxid
    String? pval_field
    File? outfile
    String? ns
    Int? id_two_sym
    File? sections
    File? outfile_detail
    Boolean? compare
    Int? ratio
    Boolean? prt_study_gos_only
    Boolean? indent
    File? obo
    Boolean? no_propagate_counts
    Boolean? relationship
    Boolean? relationships
    String? method
    String? pval_calc
    Int? min_overlap
    File? go_slim
    String? ev_inc
    String? ev_exc
    Boolean? ev_help
    Boolean? ev_help_short
    String filenames
  }
  command <<<
    find_enrichment_py \
      ~{filenames} \
      ~{if (alpha) then "--alpha" else ""} \
      ~{if (pval) then "--pval" else ""} \
      ~{if defined(ann_of_mt) then ("--annofmt " +  '"' + ann_of_mt + '"') else ""} \
      ~{if defined(taxid) then ("--taxid " +  '"' + taxid + '"') else ""} \
      ~{if defined(pval_field) then ("--pval_field " +  '"' + pval_field + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(ns) then ("--ns " +  '"' + ns + '"') else ""} \
      ~{if defined(id_two_sym) then ("--id2sym " +  '"' + id_two_sym + '"') else ""} \
      ~{if defined(sections) then ("--sections " +  '"' + sections + '"') else ""} \
      ~{if defined(outfile_detail) then ("--outfile_detail " +  '"' + outfile_detail + '"') else ""} \
      ~{if (compare) then "--compare" else ""} \
      ~{if defined(ratio) then ("--ratio " +  '"' + ratio + '"') else ""} \
      ~{if (prt_study_gos_only) then "--prt_study_gos_only" else ""} \
      ~{if (indent) then "--indent" else ""} \
      ~{if defined(obo) then ("--obo " +  '"' + obo + '"') else ""} \
      ~{if (no_propagate_counts) then "--no_propagate_counts" else ""} \
      ~{if (relationship) then "--relationship" else ""} \
      ~{if (relationships) then "--relationships" else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(pval_calc) then ("--pvalcalc " +  '"' + pval_calc + '"') else ""} \
      ~{if defined(min_overlap) then ("--min_overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(go_slim) then ("--goslim " +  '"' + go_slim + '"') else ""} \
      ~{if defined(ev_inc) then ("--ev_inc " +  '"' + ev_inc + '"') else ""} \
      ~{if defined(ev_exc) then ("--ev_exc " +  '"' + ev_exc + '"') else ""} \
      ~{if (ev_help) then "--ev_help" else ""} \
      ~{if (ev_help_short) then "--ev_help_short" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0"
  }
  parameter_meta {
    alpha: ": test-wise alpha; for each GO term, what significance level to apply\\n(most often you don't need to change this other than 0.05 or 0.01)"
    pval: ": experiment-wise alpha; for the entire experiment, what significance\\nlevel to apply after Bonferroni correction"
    ann_of_mt: "Annotation file format. Not needed if type can be\\ndetermined using filename (default: None)"
    taxid: "When using NCBI's gene2go annotation file, specify\\ndesired taxid (default: 9606)"
    pval_field: "Only print results when PVAL_FIELD < PVAL. (default:\\nNone)"
    outfile: "Write enrichment results into xlsx or tsv file\\n(default: None)"
    ns: "Limit GOEA to specified branch categories.\\nBP=Biological Process; MF=Molecular Function;\\nCC=Cellular Component (default: BP,MF,CC)"
    id_two_sym: "ASCII file containing one geneid and its symbol per\\nline (default: None)"
    sections: "Use sections file for printing grouped GOEA results.\\nExample SECTIONS values:\\ngoatools.test_data.sections.gjoneska_pfenning\\ngoatools/test_data/sections/gjoneska_pfenning.py\\ndata/gjoneska_pfenning/sections_in.txt (default: None)"
    outfile_detail: "Write enrichment results into a text file containing\\nthe following information: 1) GOEA GO terms, grouped\\ninto sections 2) List of genes and ASCII art showing\\nsection membership 3) Detailed list of each gene and\\nGO terms w/their P-values (default: None)"
    compare: "the population file as a comparison group. if this\\nflag is specified, the population is used as the study\\nplus the `population/comparison` (default: False)"
    ratio: "only show values where the difference between study\\nand population ratios is greater than this. useful for\\nexcluding GO categories with small differences, but\\ncontaining large numbers of genes. should be a value\\nbetween 1 and 2. (default: None)"
    prt_study_gos_only: "Print GO terms only if they are associated with study\\ngenes. This is useful if printng all GO results\\nregardless of their significance (--pval=1.0).\\n(default: False)"
    indent: "indent GO terms (default: False)"
    obo: "Specifies location and name of the obo file (default:\\ngo-basic.obo)"
    no_propagate_counts: "Do not propagate counts to parent terms (default:\\nFalse)"
    relationship: "Propagate counts up all relationships, (default:\\nFalse)"
    relationships: "[RELATIONSHIPS ...]\\nPropagate counts up user-specified relationships,\\nwhich include: part_of regulates negatively_regulates\\npositively_regulates (default: None)"
    method: "Available methods: local( bonferroni sidak holm fdr )\\nstatsmodels( sm_bonferroni sm_sidak holm_sidak sm_holm\\nsimes_hochberg hommel fdr_bh fdr_by fdr_tsbh fdr_tsbky\\nfdr_gbs ) (default: bonferroni,sidak,holm,fdr_bh)"
    pval_calc: "fisher fisher_scipy_stats (default: fisher)"
    min_overlap: "Check that a minimum amount of study genes are in the\\npopulation (default: 0.7)"
    go_slim: "The GO slim file is used when grouping GO terms.\\n(default: goslim_generic.obo)"
    ev_inc: "Include specified evidence codes and groups separated\\nby commas (default: None)"
    ev_exc: "Exclude specified evidence codes and groups separated\\nby commas (default: None)"
    ev_help: "Print all Evidence codes, with descriptions (default:\\nTrue)"
    ev_help_short: "Print all Evidence codes (default: True)"
    filenames: "data/study data/population data/association"
  }
  output {
    File out_stdout = stdout()
  }
}