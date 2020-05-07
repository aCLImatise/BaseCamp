class: CommandLineTool
id: squid.cwl
inputs:
- id: g
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
outputs: []
cwlVersion: v1.1
baseCommand:
- squid
