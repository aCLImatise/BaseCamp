class: CommandLineTool
id: chromosomer_fragmentmapbed_map.cwl
inputs:
- id: map
  doc: a fragment map file
  type: string
  inputBinding:
    position: 0
- id: output
  doc: an output BED file representing the fragment map
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- fragmentmapbed
- map
