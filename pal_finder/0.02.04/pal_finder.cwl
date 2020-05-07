class: CommandLineTool
id: pal_finder.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pal_finder_v00204pl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: config_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pal_finder
