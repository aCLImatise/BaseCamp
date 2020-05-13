class: CommandLineTool
id: cestat_cov.cwl
inputs:
- id: bank_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: v
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: s
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean
  inputBinding:
    prefix: -s
- id: r
  doc: Recompute mean and stdev from data
  type: boolean
  inputBinding:
    prefix: -R
- id: i
  doc: Dump scaffold/contig IIDs instead of EIDs
  type: boolean
  inputBinding:
    prefix: -i
- id: f
  doc: Only output CE features outside float deviations
  type: double
  inputBinding:
    prefix: -f
- id: l
  doc: 'Only output features at least this length (default: 100)'
  type: string
  inputBinding:
    prefix: -l
- id: s
  doc: Consider scaffolds instead of contigs
  type: boolean
  inputBinding:
    prefix: -S
- id: b
  doc: The input is a BEDPE file, not an AMOS bank
  type: boolean
  inputBinding:
    prefix: -B
- id: m
  doc: 'Use this as the library mean (default: 2244)'
  type: string
  inputBinding:
    prefix: -m
- id: d
  doc: 'Use this as the library stdev (default: 250)'
  type: string
  inputBinding:
    prefix: -d
- id: r
  doc: 'Only use pairs that are within rng deviations from the mean (default: 8)'
  type: string
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- cestat-cov
