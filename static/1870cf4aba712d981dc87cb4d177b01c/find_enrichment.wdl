version 1.0

task FindEnrichment.py {
  input {
    String? ann_of_mt
    String? taxid
    String? alpha
    String? pval
    String? pval_field
    String? outfile
    String? ns
    String? id_two_sym
    String? sections
    String? outfile_detail
    Boolean? compare
    String? ratio
    Boolean? prt_study_gos_only
    Boolean? indent
    String? obo
    Boolean? no_propagate_counts
    Boolean? relationship
    Boolean? relationships
    String? method
    String? pval_calc
    Int? min_overlap
    String? go_slim
    String? ev_inc
    String? ev_exc
    Boolean? ev_help
    Boolean? ev_help_short
    File filenames
  }
  command <<<
    find_enrichment.py \
      ~{filenames} \
      ~{if defined(ann_of_mt) then ("--annofmt " +  '"' + ann_of_mt + '"') else ""} \
      ~{if defined(taxid) then ("--taxid " +  '"' + taxid + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(pval) then ("--pval " +  '"' + pval + '"') else ""} \
      ~{if defined(pval_field) then ("--pval_field " +  '"' + pval_field + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(ns) then ("--ns " +  '"' + ns + '"') else ""} \
      ~{if defined(id_two_sym) then ("--id2sym " +  '"' + id_two_sym + '"') else ""} \
      ~{if defined(sections) then ("--sections " +  '"' + sections + '"') else ""} \
      ~{if defined(outfile_detail) then ("--outfile_detail " +  '"' + outfile_detail + '"') else ""} \
      ~{true="--compare" false="" compare} \
      ~{if defined(ratio) then ("--ratio " +  '"' + ratio + '"') else ""} \
      ~{true="--prt_study_gos_only" false="" prt_study_gos_only} \
      ~{true="--indent" false="" indent} \
      ~{if defined(obo) then ("--obo " +  '"' + obo + '"') else ""} \
      ~{true="--no_propagate_counts" false="" no_propagate_counts} \
      ~{true="--relationship" false="" relationship} \
      ~{true="--relationships" false="" relationships} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(pval_calc) then ("--pvalcalc " +  '"' + pval_calc + '"') else ""} \
      ~{if defined(min_overlap) then ("--min_overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(go_slim) then ("--goslim " +  '"' + go_slim + '"') else ""} \
      ~{if defined(ev_inc) then ("--ev_inc " +  '"' + ev_inc + '"') else ""} \
      ~{if defined(ev_exc) then ("--ev_exc " +  '"' + ev_exc + '"') else ""} \
      ~{true="--ev_help" false="" ev_help} \
      ~{true="--ev_help_short" false="" ev_help_short}
  >>>
  parameter_meta {
    ann_of_mt: "Annotation file format. Not needed if type can be determined using filename (default: None)"
    taxid: "When using NCBI's gene2go annotation file, specify desired taxid (default: 9606)"
    alpha: "Test-wise alpha for multiple testing (default: 0.05)"
    pval: "Only print results with uncorrected p-value < PVAL. Print all results, significant and otherwise, by setting --pval=1.0 (default: 0.05)"
    pval_field: "Only print results when PVAL_FIELD < PVAL. (default: None)"
    outfile: "Write enrichment results into xlsx or tsv file (default: None)"
    ns: "Limit GOEA to specified branch categories. BP=Biological Process; MF=Molecular Function; CC=Cellular Component (default: BP,MF,CC)"
    id_two_sym: "ASCII file containing one geneid and its symbol per line (default: None)"
    sections: "Use sections file for printing grouped GOEA results. Example SECTIONS values: goatools.test_data.sections.gjoneska_pfenning goatools/test_data/sections/gjoneska_pfenning.py data/gjoneska_pfenning/sections_in.txt (default: None)"
    outfile_detail: "Write enrichment results into a text file containing the following information: 1) GOEA GO terms, grouped into sections 2) List of genes and ASCII art showing section membership 3) Detailed list of each gene and GO terms w/their P-values (default: None)"
    compare: "the population file as a comparison group. if this flag is specified, the population is used as the study plus the `population/comparison` (default: False)"
    ratio: "only show values where the difference between study and population ratios is greater than this. useful for excluding GO categories with small differences, but containing large numbers of genes. should be a value between 1 and 2. (default: None)"
    prt_study_gos_only: "Print GO terms only if they are associated with study genes. This is useful if printng all GO results regardless of their significance (--pval=1.0). (default: False)"
    indent: "indent GO terms (default: False)"
    obo: "Specifies location and name of the obo file (default: go-basic.obo)"
    no_propagate_counts: "Do not propagate counts to parent terms (default: False)"
    relationship: "Propagate counts up all relationships, (default: False)"
    relationships: "[RELATIONSHIPS [RELATIONSHIPS ...]] Propagate counts up user-specified relationships, which include: part_of regulates negatively_regulates positively_regulates (default: None)"
    method: "Available methods: local( bonferroni sidak holm fdr ) statsmodels( sm_bonferroni sm_sidak holm_sidak sm_holm simes_hochberg hommel fdr_bh fdr_by fdr_tsbh fdr_tsbky fdr_gbs ) (default: bonferroni,sidak,holm,fdr_bh)"
    pval_calc: "fisher fisher_scipy_stats (default: fisher)"
    min_overlap: "Check that a minimum amount of study genes are in the population (default: 0.7)"
    go_slim: "The GO slim file is used when grouping GO terms. (default: goslim_generic.obo)"
    ev_inc: "Include specified evidence codes and groups separated by commas (default: None)"
    ev_exc: "Exclude specified evidence codes and groups separated by commas (default: None)"
    ev_help: "Print all Evidence codes, with descriptions (default: True)"
    ev_help_short: "Print all Evidence codes (default: True)"
    filenames: "data/study data/population data/association"
  }
}