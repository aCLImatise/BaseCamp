class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/combineHubs.pl.cwl
inputs:
- id: new_hub_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hub_dir_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: hub
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: dir_two
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- combineHubs.pl
