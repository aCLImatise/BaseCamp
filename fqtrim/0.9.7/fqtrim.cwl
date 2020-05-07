class: CommandLineTool
id: fqtrim.cwl
inputs:
- id: a
  doc: 'minimum length of exact suffix-prefix match with adapter sequence that can
    be trimmed at either end of the read (default: 6)'
  type: boolean
  inputBinding:
    prefix: -a
- id: pid5
  doc: minimum percent identity for adapter match at 5' end (default 96.0)
  type: boolean
  inputBinding:
    prefix: --pid5
- id: pid3
  doc: minimum percent identity for adapter match at 3' end (default 94.0)
  type: boolean
  inputBinding:
    prefix: --pid3
- id: mism
  doc: mismatch penalty for scoring the adapter alignment (default 3)
  type: boolean
  inputBinding:
    prefix: --mism
- id: match
  doc: reward for scoring the adapter alignment (default 1)
  type: string
  inputBinding:
    prefix: --match
- id: r
  doc: also look for terminal alignments with the reverse complement of the adapter
    sequence(s)
  type: boolean
  inputBinding:
    prefix: -R
outputs: []
cwlVersion: v1.1
baseCommand:
- fqtrim
