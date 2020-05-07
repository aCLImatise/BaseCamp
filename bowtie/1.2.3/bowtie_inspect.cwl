class: CommandLineTool
id: bowtie_inspect.cwl
inputs:
- id: large_index
  doc: force inspection of the 'large' index, even if a 'small' one is present.
  type: boolean
  inputBinding:
    prefix: --large-index
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
- id: e
  doc: /--ebwt-ref      Reconstruct reference from ebwt (slow, preserves colors)
  type: boolean
  inputBinding:
    prefix: -e
- id: v
  doc: /--verbose       Verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -v
- id: help
  doc: print this usage message
  type: boolean
  inputBinding:
    prefix: --help
outputs: []
cwlVersion: v1.1
baseCommand:
- bowtie-inspect
