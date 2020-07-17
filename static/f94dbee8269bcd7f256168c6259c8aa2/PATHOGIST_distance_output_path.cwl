class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/PATHOGIST_distance_output_path.cwl
inputs:
- id: bed
  doc: ''
  type: string
  inputBinding:
    prefix: --bed
- id: pathog_ist
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: distance
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- PATHOGIST
- distance
- output_path
