class: CommandLineTool
id: mga.cwl
inputs:
- id: m
  doc: ': multiple species (sequences are individually treated)'
  type: boolean
  inputBinding:
    prefix: -m
- id: s
  doc: ': single species (sequences are treated as a unit)'
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- mga
