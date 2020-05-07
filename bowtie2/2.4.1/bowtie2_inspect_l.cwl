class: CommandLineTool
id: bowtie2_inspect_l.cwl
inputs:
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
- bowtie2-inspect-l
