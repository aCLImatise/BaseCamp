class: CommandLineTool
id: ../../../squid.cwl
inputs:
- id: bool_output_gragh
  doc: bool    Output gragh file (0)
  type: boolean
  inputBinding:
    prefix: -G
- id: co
  doc: bool    Output ordering of connected components (0)
  type: boolean
  inputBinding:
    prefix: -CO
- id: to
  doc: bool    Output ordering of all segments (0)
  type: boolean
  inputBinding:
    prefix: -TO
- id: rg
  doc: bool    Output rearranged genome sequence (0)
  type: boolean
  inputBinding:
    prefix: -RG
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- squid
