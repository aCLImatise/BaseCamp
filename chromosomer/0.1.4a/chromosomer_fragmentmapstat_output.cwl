class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chromosomer_fragmentmapstat_output.cwl
inputs:
- id: chromosome_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fragment_map_stat
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
- fragmentmapstat
- output
