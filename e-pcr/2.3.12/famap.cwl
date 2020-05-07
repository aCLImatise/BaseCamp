class: CommandLineTool
id: famap.cwl
inputs:
- id: n
  doc: '- nucleotide [acgtnACGTN] allowed,'
  type: string
  inputBinding:
    position: 0
- id: n
  doc: '- nucleotide uppercase allowed [ACGTN]'
  type: string
  inputBinding:
    position: 1
- id: nx
  doc: '- nucleotide with ambiquity codes allowed'
  type: string
  inputBinding:
    position: 2
- id: nx
  doc: '- nucleotide with ambiquity codes uppercase'
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- famap
