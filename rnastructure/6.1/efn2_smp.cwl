class: CommandLineTool
id: efn2_smp.cwl
inputs:
- id: efn2
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ct_file
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
- efn2-smp
