class: CommandLineTool
id: taxmapper_filter.cwl
inputs:
- id: in_tax
  doc: "Taxonomy mapping file (taxa.tsv if not specified\notherwise)."
  type: File?
  inputBinding:
    prefix: --tax
- id: in_out
  doc: 'Output file [default: taxa_filtered.tsv]'
  type: File?
  inputBinding:
    prefix: --out
- id: in_auto
  doc: "Automatic filter with probability threshold, if\nautomatic filter is chosen\
    \ all other thresholds will\nbe ignored [nan or 0 - 1, default: 0.4]"
  type: double?
  inputBinding:
    prefix: --auto
- id: in_identity
  doc: 'Threshold for identity of best hit [default: nan]'
  type: string?
  inputBinding:
    prefix: --identity
- id: in_identity_ratio
  doc: 'Threshold for identity ratio [1 - 10, default: nan]'
  type: long?
  inputBinding:
    prefix: --identity-ratio
- id: in_evalue
  doc: 'Threshold for log e-values of best hit [default: nan]'
  type: string?
  inputBinding:
    prefix: --evalue
- id: in_evalue_diff
  doc: "Threshold for absolute difference in e-values [0 -\n100, default: nan]\n"
  type: long?
  inputBinding:
    prefix: --evalue-diff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'Output file [default: taxa_filtered.tsv]'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- taxmapper
- filter
