class: CommandLineTool
id: downpore.cwl
inputs:
- id: in_overlap
  doc: map
  type: string
  inputBinding:
    position: 0
- id: in_trim
  doc: subseq
  type: string
  inputBinding:
    position: 1
- id: in_consensus
  doc: align
  type: string
  inputBinding:
    position: 2
- id: in_full_de_novo
  doc: kmers
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- downpore
