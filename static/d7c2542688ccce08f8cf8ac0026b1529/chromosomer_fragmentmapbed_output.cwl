class: CommandLineTool
id: ../../../chromosomer_fragmentmapbed_output.cwl
inputs:
- id: chromosome_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fragment_map_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: map
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- fragmentmapbed
- output
