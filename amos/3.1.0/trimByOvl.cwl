class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/trimByOvl.cwl
inputs:
- id: file_do_to_vl
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- trimByOvl
