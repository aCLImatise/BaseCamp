class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pancake_status.cwl
inputs:
- id: pan_file
  doc: Name of PanCake Data Object File
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pancake
- status
