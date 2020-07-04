class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Rsample_smp.cwl
inputs:
- id: r_sample
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: shape_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: pfs_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- Rsample-smp
