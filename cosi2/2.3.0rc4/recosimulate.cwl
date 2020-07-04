class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/recosimulate.cwl
inputs:
- id: reco_sim
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: parameter_file_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- recosimulate
