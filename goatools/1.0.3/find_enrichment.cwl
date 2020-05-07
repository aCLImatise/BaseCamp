class: CommandLineTool
id: find_enrichment.py.cwl
inputs:
- id: filenames
  doc: data/study data/population data/association
  type: File
  inputBinding:
    position: 0
- id: ann_of_mt
  doc: 'Annotation file format. Not needed if type can be determined using filename
    (default: None)'
  type: string
  inputBinding:
    prefix: --annofmt
- id: taxid
  doc: "When using NCBI's gene2go annotation file, specify desired taxid (default:\
    \ 9606)"
  type: string
  inputBinding:
    prefix: --taxid
- id: alpha
  doc: 'Test-wise alpha for multiple testing (default: 0.05)'
  type: string
  inputBinding:
    prefix: --alpha
- id: pval
  doc: 'Only print results with uncorrected p-value < PVAL. (default: 0.05)'
  type: string
  inputBinding:
    prefix: --pval
- id: pval_field
  doc: 'Only print results when PVAL_FIELD < PVAL. (default: None)'
  type: string
  inputBinding:
    prefix: --pval_field
- id: outfile
  doc: 'Write enrichment results into xlsx or tsv file (default: None)'
  type: string
  inputBinding:
    prefix: --outfile
- id: ns
  doc: 'Limit GOEA to specified branch categories. BP=Biological Process; MF=Molecular
    Function; CC=Cellular Component (default: BP,MF,CC)'
  type: string
  inputBinding:
    prefix: --ns
- id: id2sym
  doc: 'ASCII file containing one geneid and its symbol per line (default: None)'
  type: string
  inputBinding:
    prefix: --id2sym
- id: sections
  doc: 'Use sections file for printing grouped GOEA results. Example SECTIONS values:
    goatools.test_data.sections.gjoneska_pfenning goatools/test_data/sections/gjoneska_pfenning.py
    data/gjoneska_pfenning/sections_in.txt (default: None)'
  type: string
  inputBinding:
    prefix: --sections
- id: outfile_detail
  doc: 'Write enrichment results into a text file containing the following information:
    1) GOEA GO terms, grouped into sections 2) List of genes and ASCII art showing
    section membership 3) Detailed list of each gene and GO terms w/their P-values
    (default: None)'
  type: string
  inputBinding:
    prefix: --outfile_detail
- id: compare
  doc: 'the population file as a comparison group. if this flag is specified, the
    population is used as the study plus the `population/comparison` (default: False)'
  type: boolean
  inputBinding:
    prefix: --compare
- id: ratio
  doc: 'only show values where the difference between study and population ratios
    is greater than this. useful for excluding GO categories with small differences,
    but containing large numbers of genes. should be a value between 1 and 2. (default:
    None)'
  type: string
  inputBinding:
    prefix: --ratio
- id: indent
  doc: 'indent GO terms (default: False)'
  type: boolean
  inputBinding:
    prefix: --indent
- id: obo
  doc: 'Specifies location and name of the obo file (default: go-basic.obo)'
  type: string
  inputBinding:
    prefix: --obo
- id: no_propagate_counts
  doc: 'Do not propagate counts to parent terms (default: False)'
  type: boolean
  inputBinding:
    prefix: --no_propagate_counts
- id: relationship
  doc: 'Propagate counts up all relationships (default: False)'
  type: boolean
  inputBinding:
    prefix: --relationship
- id: relationships
  doc: '[RELATIONSHIPS [RELATIONSHIPS ...]] Propagate counts up user-specified relationships
    (default: None)'
  type: boolean
  inputBinding:
    prefix: --relationships
- id: method
  doc: 'Available methods: local( bonferroni sidak holm fdr ) statsmodels( sm_bonferroni
    sm_sidak holm_sidak sm_holm simes_hochberg hommel fdr_bh fdr_by fdr_tsbh fdr_tsbky
    fdr_gbs ) (default: bonferroni,sidak,holm,fdr_bh)'
  type: string
  inputBinding:
    prefix: --method
- id: pval_calc
  doc: 'fisher fisher_scipy_stats (default: fisher)'
  type: string
  inputBinding:
    prefix: --pvalcalc
- id: min_overlap
  doc: 'Check that a minimum amount of study genes are in the population (default:
    0.7)'
  type: long
  inputBinding:
    prefix: --min_overlap
- id: go_slim
  doc: 'The GO slim file is used when grouping GO terms. (default: goslim_generic.obo)'
  type: string
  inputBinding:
    prefix: --goslim
- id: ev_inc
  doc: 'Include specified evidence codes and groups separated by commas (default:
    None)'
  type: string
  inputBinding:
    prefix: --ev_inc
- id: ev_exc
  doc: 'Exclude specified evidence codes and groups separated by commas (default:
    None)'
  type: string
  inputBinding:
    prefix: --ev_exc
- id: ev_help
  doc: 'Print all Evidence codes, with descriptions (default: True)'
  type: boolean
  inputBinding:
    prefix: --ev_help
- id: ev_help_short
  doc: 'Print all Evidence codes (default: True)'
  type: boolean
  inputBinding:
    prefix: --ev_help_short
outputs: []
cwlVersion: v1.1
baseCommand:
- find_enrichment.py
