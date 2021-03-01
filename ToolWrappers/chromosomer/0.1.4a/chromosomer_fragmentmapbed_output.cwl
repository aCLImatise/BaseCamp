class: CommandLineTool
id: chromosomer_fragmentmapbed_output.cwl
inputs:
- id: in_chromosome_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fragment_map_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_map
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: ''
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
- chromosomer
- fragmentmapbed
- output
