class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/backbone_global_to_local.cwl
inputs:
- id: x_mfa_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: backbone_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- backbone_global_to_local
