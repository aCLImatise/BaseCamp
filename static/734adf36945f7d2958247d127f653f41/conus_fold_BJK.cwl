class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/conus_fold_BJK.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: conus_fold
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file_in
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- conus_fold
- BJK
