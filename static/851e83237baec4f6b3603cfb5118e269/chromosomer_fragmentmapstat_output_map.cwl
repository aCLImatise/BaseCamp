class: CommandLineTool
id: chromosomer_fragmentmapstat_output_map.cwl
inputs:
- id: map
  doc: a fragment map file
  type: string
  inputBinding:
    position: 0
- id: output
  doc: an output file of fragment map statistics
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- fragmentmapstat
- output
- map
