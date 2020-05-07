class: CommandLineTool
id: clustalw2phylip.cwl
inputs:
- id: clustalw_2phyilip
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: clustalw_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- clustalw2phylip
