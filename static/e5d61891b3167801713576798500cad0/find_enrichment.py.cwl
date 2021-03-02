class: CommandLineTool
id: find_enrichment.py.cwl
inputs:
- id: in_alpha
  doc: ": test-wise alpha; for each GO term, what significance level to apply\n(most\
    \ often you don't need to change this other than 0.05 or 0.01)"
  type: boolean?
  inputBinding:
    prefix: --alpha
- id: in_pval
  doc: ": experiment-wise alpha; for the entire experiment, what significance\nlevel\
    \ to apply after Bonferroni correction"
  type: boolean?
  inputBinding:
    prefix: --pval
- id: in_ann_of_mt
  doc: "Annotation file format. Not needed if type can be\ndetermined using filename\
    \ (default: None)"
  type: string?
  inputBinding:
    prefix: --annofmt
- id: in_taxid
  doc: "When using NCBI's gene2go annotation file, specify\ndesired taxid (default:\
    \ 9606)"
  type: File?
  inputBinding:
    prefix: --taxid
- id: in_pval_field
  doc: "Only print results when PVAL_FIELD < PVAL. (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --pval_field
- id: in_outfile
  doc: "Write enrichment results into xlsx or tsv file\n(default: None)"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_ns
  doc: "Limit GOEA to specified branch categories.\nBP=Biological Process; MF=Molecular\
    \ Function;\nCC=Cellular Component (default: BP,MF,CC)"
  type: string?
  inputBinding:
    prefix: --ns
- id: in_id_two_sym
  doc: "ASCII file containing one geneid and its symbol per\nline (default: None)"
  type: long?
  inputBinding:
    prefix: --id2sym
- id: in_sections
  doc: "Use sections file for printing grouped GOEA results.\nExample SECTIONS values:\n\
    goatools.test_data.sections.gjoneska_pfenning\ngoatools/test_data/sections/gjoneska_pfenning.py\n\
    data/gjoneska_pfenning/sections_in.txt (default: None)"
  type: File?
  inputBinding:
    prefix: --sections
- id: in_outfile_detail
  doc: "Write enrichment results into a text file containing\nthe following information:\
    \ 1) GOEA GO terms, grouped\ninto sections 2) List of genes and ASCII art showing\n\
    section membership 3) Detailed list of each gene and\nGO terms w/their P-values\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --outfile_detail
- id: in_compare
  doc: "the population file as a comparison group. if this\nflag is specified, the\
    \ population is used as the study\nplus the `population/comparison` (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --compare
- id: in_ratio
  doc: "only show values where the difference between study\nand population ratios\
    \ is greater than this. useful for\nexcluding GO categories with small differences,\
    \ but\ncontaining large numbers of genes. should be a value\nbetween 1 and 2.\
    \ (default: None)"
  type: long?
  inputBinding:
    prefix: --ratio
- id: in_prt_study_gos_only
  doc: "Print GO terms only if they are associated with study\ngenes. This is useful\
    \ if printng all GO results\nregardless of their significance (--pval=1.0).\n\
    (default: False)"
  type: boolean?
  inputBinding:
    prefix: --prt_study_gos_only
- id: in_indent
  doc: 'indent GO terms (default: False)'
  type: boolean?
  inputBinding:
    prefix: --indent
- id: in_obo
  doc: "Specifies location and name of the obo file (default:\ngo-basic.obo)"
  type: File?
  inputBinding:
    prefix: --obo
- id: in_no_propagate_counts
  doc: "Do not propagate counts to parent terms (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --no_propagate_counts
- id: in_relationship
  doc: "Propagate counts up all relationships, (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --relationship
- id: in_relationships
  doc: "[RELATIONSHIPS ...]\nPropagate counts up user-specified relationships,\nwhich\
    \ include: part_of regulates negatively_regulates\npositively_regulates (default:\
    \ None)"
  type: boolean?
  inputBinding:
    prefix: --relationships
- id: in_method
  doc: "Available methods: local( bonferroni sidak holm fdr )\nstatsmodels( sm_bonferroni\
    \ sm_sidak holm_sidak sm_holm\nsimes_hochberg hommel fdr_bh fdr_by fdr_tsbh fdr_tsbky\n\
    fdr_gbs ) (default: bonferroni,sidak,holm,fdr_bh)"
  type: string?
  inputBinding:
    prefix: --method
- id: in_pval_calc
  doc: 'fisher fisher_scipy_stats (default: fisher)'
  type: string?
  inputBinding:
    prefix: --pvalcalc
- id: in_min_overlap
  doc: "Check that a minimum amount of study genes are in the\npopulation (default:\
    \ 0.7)"
  type: long?
  inputBinding:
    prefix: --min_overlap
- id: in_go_slim
  doc: "The GO slim file is used when grouping GO terms.\n(default: goslim_generic.obo)"
  type: File?
  inputBinding:
    prefix: --goslim
- id: in_ev_inc
  doc: "Include specified evidence codes and groups separated\nby commas (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --ev_inc
- id: in_ev_exc
  doc: "Exclude specified evidence codes and groups separated\nby commas (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --ev_exc
- id: in_ev_help
  doc: "Print all Evidence codes, with descriptions (default:\nTrue)"
  type: boolean?
  inputBinding:
    prefix: --ev_help
- id: in_ev_help_short
  doc: 'Print all Evidence codes (default: True)'
  type: boolean?
  inputBinding:
    prefix: --ev_help_short
- id: in_filenames
  doc: data/study data/population data/association
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- find_enrichment.py
