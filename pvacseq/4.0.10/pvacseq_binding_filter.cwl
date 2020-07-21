class: CommandLineTool
id: ../../../pvacseq_binding_filter.cwl
inputs:
- id: binding_threshold
  doc: 'Report only epitopes where the mutant allele has ic50 binding scores below
    this value. Default: 500'
  type: string
  inputBinding:
    prefix: --binding-threshold
- id: minimum_fold_change
  doc: 'Minimum fold change between mutant binding score and wild-type score. The
    default is 0, which filters no results, but 1 is often a sensible option (requiring
    that binding is better to the MT than WT). Default: 0'
  type: long
  inputBinding:
    prefix: --minimum-fold-change
- id: top_score_metric
  doc: 'The ic50 scoring metric to use when filtering epitopes by binding-threshold
    or minimum fold change. lowest: Best MT Score/Corresponding Fold Change - lowest
    MT ic50 binding score/corresponding fold change of all chosen prediction methods.
    median: Median MT Score/Median Fold Change - median MT ic50 binding score/fold
    change of all chosen prediction methods. Default: median'
  type: string
  inputBinding:
    prefix: --top-score-metric
outputs: []
cwlVersion: v1.1
baseCommand:
- pvacseq
- binding_filter
