class: CommandLineTool
id: seqhax_filter.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: l
  doc: Minimum length of each read. [default 1]
  type: long
  inputBinding:
    prefix: -l
- id: f
  doc: Output as fasta (no qualities)
  type: boolean
  inputBinding:
    prefix: -f
- id: p
  doc: 'Paired mode: reads are kept/discared in pairs'
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- seqhax
- filter
