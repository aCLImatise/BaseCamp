class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/abyss_junction.cwl
inputs:
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
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-junction
