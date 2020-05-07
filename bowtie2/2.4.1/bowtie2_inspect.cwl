class: CommandLineTool
id: bowtie2_inspect.cwl
inputs:
- id: large_index
  doc: force inspection of the 'large' index, even if a 'small' one is present.
  type: boolean
  inputBinding:
    prefix: --large-index
- id: debug
  doc: use the debug binary; slower, assertions enabled
  type: boolean
  inputBinding:
    prefix: --debug
- id: sanitized
  doc: use sanitized binary; slower, uses ASan and/or UBSan
  type: boolean
  inputBinding:
    prefix: --sanitized
- id: verbose
  doc: log the issued command
  type: boolean
  inputBinding:
    prefix: --verbose
- id: a
  doc: '/--across <int>  Number of characters across in FASTA output (default: 60)'
  type: boolean
  inputBinding:
    prefix: -a
- id: n
  doc: /--names         Print reference sequence names only
  type: boolean
  inputBinding:
    prefix: -n
- id: s
  doc: /--summary       Print summary incl. ref names, lengths, index properties
  type: boolean
  inputBinding:
    prefix: -s
- id: v
  doc: /--verbose       Verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- bowtie2-inspect
