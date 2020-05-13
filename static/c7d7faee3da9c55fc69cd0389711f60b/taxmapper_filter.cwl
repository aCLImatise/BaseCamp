class: CommandLineTool
id: taxmapper_filter.cwl
inputs:
- id: tax
  doc: Taxonomy mapping file (taxa.tsv if not specified otherwise).
  type: string
  inputBinding:
    prefix: --tax
- id: out
  doc: 'Output file [default: taxa_filtered.tsv]'
  type: string
  inputBinding:
    prefix: --out
- id: auto
  doc: 'Automatic filter with probability threshold, if automatic filter is chosen
    all other thresholds will be ignored [nan or 0 - 1, default: 0.4]'
  type: string
  inputBinding:
    prefix: --auto
- id: identity
  doc: 'Threshold for identity of best hit [default: nan]'
  type: string
  inputBinding:
    prefix: --identity
- id: identity_ratio
  doc: 'Threshold for identity ratio [1 - 10, default: nan]'
  type: string
  inputBinding:
    prefix: --identity-ratio
- id: evalue
  doc: 'Threshold for log e-values of best hit [default: nan]'
  type: string
  inputBinding:
    prefix: --evalue
- id: evalue_diff
  doc: 'Threshold for absolute difference in e-values [0 - 100, default: nan]'
  type: string
  inputBinding:
    prefix: --evalue-diff
outputs: []
cwlVersion: v1.1
baseCommand:
- taxmapper
- filter
