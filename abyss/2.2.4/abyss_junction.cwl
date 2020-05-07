class: CommandLineTool
id: abyss_junction.cwl
inputs:
- id: overlap
  doc: the overlap graph
  type: string
  inputBinding:
    position: 0
- id: scaffold
  doc: a scaffold graph
  type: string
  inputBinding:
    position: 1
- id: ignore
  doc: ignore junctions seen in FILE
  type: File
  inputBinding:
    prefix: --ignore
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-junction
