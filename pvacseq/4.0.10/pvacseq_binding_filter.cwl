class: CommandLineTool
id: ../../../pvacseq_binding_filter.cwl
inputs:
- id: in_binding_threshold
  doc: "Report only epitopes where the mutant allele has ic50\nbinding scores below\
    \ this value. Default: 500"
  type: long
  inputBinding:
    prefix: --binding-threshold
- id: in_minimum_fold_change
  doc: "Minimum fold change between mutant binding score and\nwild-type score. The\
    \ default is 0, which filters no\nresults, but 1 is often a sensible option (requiring\n\
    that binding is better to the MT than WT). Default: 0"
  type: long
  inputBinding:
    prefix: --minimum-fold-change
- id: in_top_score_metric
  doc: "The ic50 scoring metric to use when filtering epitopes\nby binding-threshold\
    \ or minimum fold change. lowest:\nBest MT Score/Corresponding Fold Change - lowest\
    \ MT\nic50 binding score/corresponding fold change of all\nchosen prediction methods.\
    \ median: Median MT\nScore/Median Fold Change - median MT ic50 binding\nscore/fold\
    \ change of all chosen prediction methods.\nDefault: median\n"
  type: string
  inputBinding:
    prefix: --top-score-metric
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pvacseq
- binding_filter
