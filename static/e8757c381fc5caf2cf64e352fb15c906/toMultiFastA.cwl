class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/toMultiFastA.cwl
inputs:
- id: input_interval_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_base_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- toMultiFastA
